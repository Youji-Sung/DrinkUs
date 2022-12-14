import Header from "../../components/layout/Header";
import { useNavigate } from "react-router-dom";
import styled from "styled-components";
import { useState, useEffect } from "react";
import { client } from "../../utils/client";
import LiveListItem from "../../components/room/LiveListItem";
import PageNation from "../../components/common/buttons/PageNation";
import { LiveButton } from "../../components/common/buttons/LiveButton";
import Modal from "../../components/modals/Modal";
import CreateRoom from "./CreateRoom";

// 필터
const FilterWrapper = styled.div`
  display: flex;
  background-color: black;
  width: 100vw;
  color: ${(props) => props.color};
  justify-content: center;
  flex-direction: column;
  align-items: center;
`;

const FilterInnerWrapper = styled.div`
  width: ${(props) => props.width};
`;

const Line = styled.div`
  height: 2px;
  border-radius: 40px;
  margin: 16px;
  border: 0.1px solid rgba(18, 21, 39, 0.86);
  background-color: #676775;
`;

// 필터 안 박스 / 버튼
const SearchBox = styled.input`
  display: flex;
  /* width: 782px; */
  width: 80%;
  height: 30px;
  border-radius: 5px;
  border: 3px solid rgba(18, 21, 39, 0.86);
  background-color: #fff;
  padding: 0px 0px 0px 8px;
`;

const OptionWrapper = styled.div`
  width: 1000px;
  margin-left: 100px;
  margin-right: 100px;
  justify-content: space-between;
  align-items: center;
  display: flex;
`;

const OptionInnerWrapper = styled.div`
  justify-content: space-between;
`;

const OptionStyle = styled.option`
  color: ${(props) => props.color};
`;

const SearchButton = styled.button`
  color: #676775;
  width: 26%;
  height: 40px;
  border-radius: 30px;
  border: 3px solid rgba(18, 21, 39, 0.86);
  font-size: 16px;
  cursor: pointer;
  &:hover {
    background-color: rgba(18, 21, 39, 0.86);
  }
`;

const SearchInnerWrapper = styled.div`
  margin: 12px 100px 0px 100px;
  display: flex;
  align-items: center;
  justify-content: space-between;
`;

// 또래만 체크박스
const AgesWrapper = styled.div`
  display: inline-block;
  height: 36px;
  line-height: 32px;
  width: 160px;
  color: black;
  background-color: #d9d9d9;
  border-radius: 30px;
  text-align: center;
  overflow: hidden;
  margin-right: 205px;

  & input:checked + span {
    background-color: #bdcff2;
  }
  & span {
    cursor: pointer;
    display: block;
    padding: 2px 16px;
  }
  &:hover {
    background-color: rgba(18, 21, 39, 0.86);
  }
`;

const CheckBoxForm = styled.input`
  display: none;
  cursor: pointer;
`;

const AgeLetter = styled.span`
  color: ${(props) => props.color};
`;

const SelectBox = styled.select`
  padding: 0px 0px 3px 4px;
  width: 200px;
  height: 36px;
  background-color: #fff;
  border-radius: 5px;
  font-size: 14px;
  border: 3px solid rgba(18, 21, 39, 0.86);
  color: ${(props) => props.color};
  margin-right: 20px;
  cursor: pointer;
`;

// 방 목록용 스타일
const ListWrapper = styled.div`
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  padding: 24px 0px 100px 36px;
  gap: 30px;
  width: 1000px;
  height: 680px;
  margin-top: 30px;
  border-radius: 20px;
  background-color: transparent;
`;

// 페이지네이션
const PageNationWrapper = styled.div`
  width: 80%;
  margin-bottom: 20px;
`;

const RoomList = () => {
  const navigate = useNavigate();

  // 검색
  const [filter, setFilter] = useState({
    searchKeyword: "",
    sortOrder: "0",
    categoryId: null,
  });

  // input 값을 filter에 넣어주는 함수
  const onFilterInput = (e) => {
    setFilter({ ...filter, [e.target.name]: e.target.value });
  };

  // 검색이 끝나면 초기화
  const onHandleReset = () => {
    setFilter({ searchKeyword: "" });
  };

  // api 요청
  const onMakeRoomList = async (pageNum) => {
    const result = await client
      .get(`/rooms`, {
        params: {
          page: pageNum,
          searchKeyword: filter.searchKeyword,
          sameAge: SameAge,
          sortOrder: filter.sortOrder,
          categoryId: filter.categoryId,
        },
      })
      .then((response) => response);
    return result;
  };

  // pagenation을 위한 state
  const [filterState, setFilterState] = useState({
    content: [],
    number: 0,
    numberOfElements: 0,
    size: 0,
    totalPages: 0,
  });

  const fetchFilterState = async (pageNum) => {
    const response = await onMakeRoomList(pageNum);
    setFilterState({ ...response.data });
  };
  const onHandlePageButton = (pageNum) => {
    fetchFilterState(pageNum);
  };

  useEffect(() => {
    fetchFilterState();
  }, []);

  const [modalState, setModalState] = useState(false);
  const openModal = () => {
    setModalState(true);
  };

  const closeModal = () => {
    setModalState(false);
  };

  // 체크박스
  const [SameAge, setSameAge] = useState(false);

  const onSameAgeCheck = ({ target }) => {
    target.checked ? setSameAge(true) : setSameAge(false);
    return SameAge;
  };

  return (
    <>
      <Header />
      <FilterWrapper>
        <Modal
          isOpen={modalState}
          modalContent={<CreateRoom close={closeModal} />}
          width="800px"
          borderWidth="0"
          background="#a8a8a8"
        />

        <FilterInnerWrapper width={"1000px"}>
          <div style={{ padding: "0px 20px" }}>
            <LiveButton onClick={openModal} backgroundcolor={"#fff"}>
              방 만들기
            </LiveButton>
            <LiveButton
              onClick={() => navigate("/live")}
              backgroundcolor={"#BDCFF2"}
            >
              추천 방 보기
            </LiveButton>
          </div>
        </FilterInnerWrapper>
      </FilterWrapper>
      <FilterWrapper color={"white"}>
        <FilterInnerWrapper width={"1000px"}>
          <Line />
          <OptionWrapper>
            <OptionInnerWrapper>
              <SelectBox
                type="selectbox"
                name="categoryId"
                onChange={onFilterInput}
                color={"#676775"}
              >
                <OptionStyle value="0" color={"#676775"}>
                  관심사 없음
                </OptionStyle>
                <OptionStyle value="1" color={"#676775"}>
                  스포츠
                </OptionStyle>
                <OptionStyle value="2" color={"#676775"}>
                  음악
                </OptionStyle>
                <OptionStyle value="3" color={"#676775"}>
                  게임/오락
                </OptionStyle>
                <OptionStyle value="4" color={"#676775"}>
                  문화
                </OptionStyle>
                <OptionStyle value="5" color={"#676775"}>
                  기타
                </OptionStyle>
              </SelectBox>
              <SelectBox
                type="selectbox"
                name="sortOrder"
                onChange={onFilterInput}
                color={"#676775"}
              >
                <OptionStyle value="0" color={"#676775"}>
                  최신순
                </OptionStyle>
                <OptionStyle value="1" color={"#676775"}>
                  오래된 순
                </OptionStyle>
              </SelectBox>
            </OptionInnerWrapper>
            <AgesWrapper>
              <label>
                <CheckBoxForm
                  type="checkbox"
                  name="sameAge"
                  onChange={onSameAgeCheck}
                />
                <AgeLetter color={"#676775"}>
                  <i className="fas fa-check"></i> 또래만 만날래요
                </AgeLetter>
              </label>
            </AgesWrapper>
          </OptionWrapper>
        </FilterInnerWrapper>
      </FilterWrapper>
      <FilterWrapper>
        <FilterInnerWrapper width={"1000px"}>
          <SearchInnerWrapper width={"1000px"}>
            <div style={{ width: "100%" }}>
              <SearchBox
                type="text"
                value={filter.searchKeyword}
                name="searchKeyword"
                onChange={onFilterInput}
                placeholder="방 제목으로 검색하세요"
              ></SearchBox>
            </div>
            <SearchButton
              onClick={() => {
                fetchFilterState(0), onHandleReset();
              }}
            >
              검색하기
            </SearchButton>
          </SearchInnerWrapper>
          <Line />
        </FilterInnerWrapper>
      </FilterWrapper>
      {/* 방 목록 */}
      <FilterWrapper color={"black"}>
        <ListWrapper>
          {filterState.content.length <= 0 ? (
            <div>딱 맞는 방이 없어요. 다른 조건으로 검색해 보세요!</div>
          ) : (
            <>
              {filterState.content.map((room, index) => (
                <LiveListItem {...room} key={index} />
              ))}
            </>
          )}
        </ListWrapper>
        <PageNationWrapper>
          <PageNation
            onClick={onHandlePageButton}
            number={filterState.number + 1}
            size={filterState.size}
            totalPages={filterState.totalPages}
            bgColor={"#a2b8ff"}
            activeNumberColor={"#FFFFFF"}
            numberColor={"#bdcff2"}
            directionColor={"#bdcff2"}
          />
        </PageNationWrapper>
      </FilterWrapper>
    </>
  );
};

export default RoomList;
