import { useEffect, useState } from "react";
import styled from "styled-components";
import { getMySchedule } from "../../../api/MyPageAPI";
import ProfileTitle from "../../../components/auth/ProfileTitle";
import PageNation from "../../../components/common/buttons/PageNation";
import ScheduleList from "../../../components/Schedules/ScheduleList";

const ScheduleTap = styled.div`
  display: flex;
  padding: 8px 20px;
  margin: 0px 80px;
  border-bottom: 1px solid #6f92bf;
`;

const MySchedule = () => {
  const [scheduleState, setScheduleState] = useState({
    content: [],
    number: 0,
    numberOfElements: 0,
    size: 0,
    totalPages: 0,
  });
  const fetchData = async (pageNum) => {
    const response = await getMySchedule(pageNum);
    setScheduleState({ ...response.data });
  };

  const onHandlePageButton = (pageNum) => {
    fetchData(pageNum);
  };

  useEffect(() => {
    fetchData(scheduleState.number);
  }, []);
  console.log(scheduleState);
  return (
    <div style={{ padding: "30px" }}>
      <ProfileTitle isEdit={false} />
      <div style={{ marginTop: "30px" }}>
        <ScheduleTap>
          <div style={{ width: "15%" }}>글 번호</div>
          <div style={{ width: "55%" }}>내용</div>
          <div style={{ width: "30%" }}>일시</div>
        </ScheduleTap>
        <ScheduleList scheduleList={scheduleState.content} />
        {scheduleState.content.length !== 0 ? (
          <>
            <PageNation
              onClick={onHandlePageButton}
              number={scheduleState.number + 1}
              size={scheduleState.size}
              totalPages={scheduleState.totalPages}
            />
          </>
        ) : (
          <></>
        )}
      </div>
    </div>
  );
};

export default MySchedule;