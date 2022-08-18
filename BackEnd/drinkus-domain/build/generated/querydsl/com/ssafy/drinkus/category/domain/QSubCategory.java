package com.ssafy.drinkus.category.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QSubCategory is a Querydsl query type for SubCategory
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QSubCategory extends EntityPathBase<SubCategory> {

    private static final long serialVersionUID = -1862529851L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QSubCategory subCategory = new QSubCategory("subCategory");

    public final QCategory category;

    public final NumberPath<Long> SubCategoryId = createNumber("SubCategoryId", Long.class);

    public final StringPath SubCategoryName = createString("SubCategoryName");

    public final ListPath<com.ssafy.drinkus.user.domain.UserSubCategory, com.ssafy.drinkus.user.domain.QUserSubCategory> userSubCategoryList = this.<com.ssafy.drinkus.user.domain.UserSubCategory, com.ssafy.drinkus.user.domain.QUserSubCategory>createList("userSubCategoryList", com.ssafy.drinkus.user.domain.UserSubCategory.class, com.ssafy.drinkus.user.domain.QUserSubCategory.class, PathInits.DIRECT2);

    public QSubCategory(String variable) {
        this(SubCategory.class, forVariable(variable), INITS);
    }

    public QSubCategory(Path<? extends SubCategory> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QSubCategory(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QSubCategory(PathMetadata metadata, PathInits inits) {
        this(SubCategory.class, metadata, inits);
    }

    public QSubCategory(Class<? extends SubCategory> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.category = inits.isInitialized("category") ? new QCategory(forProperty("category")) : null;
    }

}

