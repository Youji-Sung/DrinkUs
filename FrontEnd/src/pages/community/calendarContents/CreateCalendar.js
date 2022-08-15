import { useState } from "react";
import styled from "styled-components";
import FetchProfile from "../../../components/room/FetchProfile";
import { client } from "../../../utils/client";
import moment from "moment";
import { FailAlert, SuccessAlert } from "../../../utils/sweetAlert";
import ModalCloseButton from "../../../components/common/buttons/ModalCloseButton";

const CreateCalendarBlock = styled.div`
  width: 800px;
  margin-bottom: 20px;
  color: black;
`;

const InputBlock = styled.div`
  display: block;
  line-height: 1;
  margin-top: 5px;
  margin-bottom: 5px;
  height: 60px;
`;

const InputLeftWrap = styled.div`
  float: left;
  margin-left: 2%;
  width: 18%;
  height: 30px;
  line-height: 30px;
  padding: 17px 0;
  font-size: 18px;
  text-align: left;
`;

const InputRightWrap = styled.div`
  float: left;
  width: 80%;
  height: 30px;
  line-height: 30px;
  padding: 17px 0;
`;

const CreateButton = styled.button`
  float: right;
  margin-right: 4%;
  background-color: #eaf1ff;
  color: #676775;
  width: 120px;
  height: 50px;
  font-size: 20px;
  font-weight: bold;
  border: 4px solid #bdcff2;
  border-radius: 5px;
  box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.25);
  cursor: pointer;
`;

const InputForm = styled.input`
  background-color: white;
  width: 95%;
  height: 30px;
  line-height: 30px;
  border: 1px solid #bdcff2;
  border-radius: 10px;
`;

const DateInputForm = styled.input`
  margin-left: ${({ ml }) => ml};
  margin-right: 4px;
  background-color: white;
  width: 10%;
  height: 30px;
  line-height: 30px;
  border: 1px solid #bdcff2;
  border-radius: 10px;
  text-align: center;
`;

const SelectBox = styled.select`
  width: 200px;
  background-color: white;
  border: 3px solid #bdcff2;
  height: 36px;
  border-radius: 20px;
  font-size: 16px;
  margin-right: 4px;
`;

const AgesWrapper = styled.div`
  display: inline-block;
  height: 28px;
  line-height: 28px;
  width: 80px;
  color: black;
  margin: 4px 12px 4px 4px;
  background-color: #ffffff;
  border-radius: 4px;
  border: 3px solid #eaf1ff;
  text-align: center;
  overflow: hidden;

  & input:checked + span {
    background-color: #bdcff2;
  }
  & span {
    cursor: pointer;
    display: block;
    padding: 2px 16px;
  }
`;

const CheckBoxStyled = styled.input`
  display: none;
  cursor: pointer;
`;

const StyledAmountWrapper = styled.div`
  width: 28px;
  height: 28px;
  border: 3px solid #bdcff2;
  border-radius: 10px;
  font-size: 16px;
  margin: 0px 18px;
  background-color: white;
  color: black;
  display: flex;
  justify-content: center;
  align-items: center;
  box-sizing: border-box;
`;

const StyledButton = styled.button`
  adding: 4px;
  border: none;
  background-color: transparent;
  font-size: 16px;
  color: white;
  cursor: pointer;
`;

const PeopleLimitWrapper = styled.div`
  display: flex;
  flex-direction: row;
  align-items: baseline;
  padding: 8px;
`;

const CreateCalendar = ({ calendarDate, close, successHandler }) => {
  const [calendarInfo, setCalendarInfo] = useState({
    calendarContent: "",
    peopleLimit: 2,
    place: "술집",
  });

  const onCalendarInfoInput = (e) => {
    setCalendarInfo({ ...calendarInfo, [e.target.name]: e.target.value });
  };

  const onCalendarInfoSubmit = (e) => {
    e.preventDefault();

    // 방 설명 유효성 체크
    if (calendarInfo.calendarContent.length === 0) {
      alert(
        `방 설명을 써 주세요. '${calendarInfo.place}에서 만날 사람~' 은 어때요?`,
      );
      return;
    }

    client
      .post("calendar", {
        calendarContent: calendarInfo.calendarContent,
        calendarDatetime:
          calendarDate.y +
          (calendarDate.m < 10 ? "0" + calendarDate.m : calendarDate.m) +
          (calendarDate.d < 10 ? "0" + calendarDate.d : calendarDate.d) +
          (dateState.hour < 10 ? "0" + dateState.hour : dateState.hour) +
          (dateState.minute < 10 ? "0" + dateState.minute : dateState.minute),
        peopleLimit: calendarInfo.peopleLimit,
        place: calendarInfo.place,
        ages: ageCheckedItems,
      })
      .then(function (response) {
        SuccessAlert("글쓰기 성공!");
        successHandler();
        close();
      })
      .catch(function (error) {
        console.log("0" + calendarDate.m);
        console.log("error: ", error);
        FailAlert("실패!");
      });
  };

  // Age 관련 체크 로직
  const [ageCheckedItems, setAgeCheckedItems] = useState([
    "N",
    "N",
    "N",
    "N",
    "N",
    "N",
  ]);

  const onCheckedAgeItemHandler = (id, isChecked) => {
    const newageCheckedItems = [...ageCheckedItems];
    newageCheckedItems[id] = isChecked ? "Y" : "N";
    setAgeCheckedItems([...newageCheckedItems]);
  };

  const [CheckedAges, setIsCheckedAges] = useState(false);

  const onAgeCheckbox = ({ target }) => {
    setIsCheckedAges(!CheckedAges);
    onCheckedAgeItemHandler(target.id, target.checked);
  };

  // 인원 플러스 마이너스 버튼
  const onHandleIncrease = (type) => {
    const amount = calendarInfo[type] + 1 > 8 ? 8 : calendarInfo[type] + 1;
    setCalendarInfo({ ...calendarInfo, [type]: amount });
  };

  const onHandleDecrease = (type) => {
    const amount = calendarInfo[type] - 1 < 2 ? 2 : calendarInfo[type] - 1;
    setCalendarInfo({ ...calendarInfo, [type]: amount });
  };

  // 날짜 형식
  const [dateState, setDateState] = useState({
    year: "",
    month: "",
    day: "",
    hour: "",
    minute: "",
  });

  const onDaterInfoInput = (e) => {
    setDateState({ ...dateState, [e.target.name]: e.target.value });
  };

  return (
    <>
      <CreateCalendarBlock>
        <ModalCloseButton close={close} />
        <FetchProfile />
        <InputBlock>
          <InputLeftWrap>방 설명</InputLeftWrap>
          <InputRightWrap>
            <InputForm
              type="text"
              value={calendarInfo.calendarContent}
              name="calendarContent"
              placeholder="방 설명을 써주세요"
              onChange={onCalendarInfoInput}
              required
            ></InputForm>
          </InputRightWrap>
        </InputBlock>
        <InputBlock>
          <InputLeftWrap>일시</InputLeftWrap>
          <InputRightWrap>
            {calendarDate.y}년 {calendarDate.m}월 {calendarDate.d}일
            <DateInputForm
              type="number"
              ml={"20px"}
              value={dateState.hour}
              name="hour"
              placeholder="ex)22"
              onChange={onDaterInfoInput}
              required
            ></DateInputForm>
            시
            <DateInputForm
              type="number"
              ml={"20px"}
              value={dateState.minute}
              name="minute"
              placeholder="ex)30"
              onChange={onDaterInfoInput}
              required
            ></DateInputForm>
            분
          </InputRightWrap>
        </InputBlock>
        <InputBlock>
          <InputLeftWrap>장소</InputLeftWrap>
          <InputRightWrap>
            <SelectBox
              type="selectbox"
              value={calendarInfo.place}
              name="place"
              onChange={onCalendarInfoInput}
              required
            >
              <option>술집</option>
              <option>펍</option>
              <option>칵테일바</option>
              <option>야구장</option>
              <option>축구장</option>
              <option>페스티벌</option>
              <option>클럽</option>
              <option>편의점</option>
              <option>한강공원</option>
              <option>미술관</option>
              <option>영화관</option>
              <option>도서관</option>
            </SelectBox>
            에서 만나요!
          </InputRightWrap>
        </InputBlock>
        <InputBlock>
          <InputLeftWrap>연령대</InputLeftWrap>
          <InputRightWrap>
            <AgesWrapper>
              <label>
                <CheckBoxStyled
                  type="checkbox"
                  id="0"
                  name="ages"
                  value={CheckedAges.roomage}
                  onChange={onAgeCheckbox}
                />
                <span>20대</span>
              </label>
            </AgesWrapper>
            <AgesWrapper>
              <label>
                <CheckBoxStyled
                  type="checkbox"
                  id="1"
                  name="ages"
                  onChange={onAgeCheckbox}
                />
                <span>30대</span>
              </label>
            </AgesWrapper>
            <AgesWrapper>
              <label>
                <CheckBoxStyled
                  type="checkbox"
                  id="2"
                  name="ages"
                  onChange={onAgeCheckbox}
                />
                <span>40대</span>
              </label>
            </AgesWrapper>
            <AgesWrapper>
              <label>
                <CheckBoxStyled
                  type="checkbox"
                  id="3"
                  name="ages"
                  onChange={onAgeCheckbox}
                />
                <span>50대</span>
              </label>
            </AgesWrapper>
            <AgesWrapper>
              <label>
                <CheckBoxStyled
                  type="checkbox"
                  id="4"
                  name="ages"
                  onChange={onAgeCheckbox}
                />
                <span>60대</span>
              </label>
            </AgesWrapper>
            <AgesWrapper>
              <label>
                <CheckBoxStyled
                  type="checkbox"
                  id="5"
                  name="ages"
                  onChange={onAgeCheckbox}
                />
                <span>70대↑</span>
              </label>
            </AgesWrapper>
          </InputRightWrap>
        </InputBlock>
        <InputBlock>
          <InputLeftWrap>인원</InputLeftWrap>
          <InputRightWrap>
            <PeopleLimitWrapper>
              <StyledButton onClick={() => onHandleDecrease("peopleLimit")}>
                <i className="fas fa-minus"></i>
              </StyledButton>
              <StyledAmountWrapper>
                {calendarInfo.peopleLimit}
              </StyledAmountWrapper>
              <StyledButton onClick={() => onHandleIncrease("peopleLimit")}>
                <i className="fas fa-plus"></i>
              </StyledButton>
            </PeopleLimitWrapper>
          </InputRightWrap>
        </InputBlock>
        <InputBlock>
          <CreateButton onClick={onCalendarInfoSubmit}>생성하기</CreateButton>
        </InputBlock>
      </CreateCalendarBlock>
    </>
  );
};

export default CreateCalendar;