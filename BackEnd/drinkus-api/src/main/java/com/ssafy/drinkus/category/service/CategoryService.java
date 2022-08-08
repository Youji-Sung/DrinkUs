package com.ssafy.drinkus.category.service;


import com.ssafy.drinkus.category.domain.Category;
import com.ssafy.drinkus.category.domain.CategoryRepository;
import com.ssafy.drinkus.category.domain.SubCategory;
import com.ssafy.drinkus.category.domain.SubCategoryRepository;
import com.ssafy.drinkus.category.query.CategoryQueryRepository;
import com.ssafy.drinkus.category.response.CategoryListResponse;
import com.ssafy.drinkus.category.response.CategoryResponse;
import com.ssafy.drinkus.category.response.SubCategoryResponse;
import com.ssafy.drinkus.common.DuplicateException;
import com.ssafy.drinkus.common.NotFoundException;
import com.ssafy.drinkus.user.domain.User;
import com.ssafy.drinkus.user.domain.UserSubCategory;
import com.ssafy.drinkus.user.domain.UserSubCategoryRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Slf4j
@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class CategoryService {
    private final CategoryRepository categoryRepository;
    private final UserSubCategoryRepository userSubCategoryRepository;
    private final SubCategoryRepository subCategoryRepository;
    private final CategoryQueryRepository categoryQueryRepository;

    public List<CategoryResponse> findAllCategory() {
        List<Category> categoryList = categoryRepository.findAll();
        return categoryList.stream()
                .map(CategoryResponse::from)
                .collect(Collectors.toList());
    }

    //회원이 추가한 관심사 조회
    public List<CategoryListResponse> findAllCategoryAndSubCategory(User user) {

        List<Category> categoryList = categoryQueryRepository.findAllCategoryAndSubCategory();
        List<UserSubCategory> findUserSubCategoryList = userSubCategoryRepository.findByUser(user);
        return categoryList.stream()
                .map(category -> CategoryListResponse.from(category, findUserSubCategoryList))
                .collect(Collectors.toList());
    }


    //타 회원의 관심사 조회
    public List<SubCategoryResponse> findByUserId(Long userId){
        List<SubCategory> subCategoryList = categoryQueryRepository.findByUserId(userId);
        return subCategoryList.stream()
                .map(SubCategoryResponse::from)
                .collect(Collectors.toList());
    }

    //회원의 관심사 생성
    @Transactional
    public void createUserInterest(User user, Long subCategoryId){
        SubCategory findInterest = subCategoryRepository.findById(subCategoryId)
                .orElseThrow(() -> new NotFoundException(NotFoundException.SUBCATEGORY_NOT_FOUND));
        System.out.println("createUserInterest"+user.getUserId() + findInterest.getSubCategoryId());

        if (userSubCategoryRepository.existsUserSubCategoryByUserAndSubCategory(user, findInterest)) {
            throw new DuplicateException("이미 추가한 관심사 입니다.");
        }
        UserSubCategory userSubCategory = UserSubCategory.createUserInterest(user, findInterest);
        userSubCategoryRepository.save(userSubCategory);

    }

    //회원의 관심사 삭제
    @Transactional
    public void deleteUserInterest(User user, Long subCategoryId){
        SubCategory findSubCategory = subCategoryRepository.findById(subCategoryId)
                        .orElseThrow(() -> new NotFoundException(NotFoundException.SUBCATEGORY_NOT_FOUND));

        if (!userSubCategoryRepository.existsUserSubCategoryByUserAndSubCategory(user, findSubCategory)) {
            throw new DuplicateException("이미 없는 관심사 입니다.");
        }
        userSubCategoryRepository.deleteByUserAndSubCategory(user, findSubCategory);
    }
}
