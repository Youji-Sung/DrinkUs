package com.ssafy.drinkus.room.response;

import com.querydsl.core.annotations.QueryProjection;
import com.ssafy.drinkus.room.Room;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RoomListResponse {
    private Long roomId;

    private String roomName;

    private String placeTheme;

    private Integer peopleLimit;

    private LocalDateTime createdDate;

    @QueryProjection
    public RoomListResponse(Room room){
       this.roomId = room.getRoomId();
       this.roomName = room.getRoomName();
       this.placeTheme = room.getPlaceTheme();
       this.peopleLimit = room.getPeopleLimit();
       this.createdDate = room.getCreatedDate();
    }

    public static RoomListResponse from(Room room){
        RoomListResponse roomListResponse = new RoomListResponse();
        roomListResponse.roomId = room.getRoomId();
        roomListResponse.roomName = room.getRoomName();
        roomListResponse.placeTheme = room.getPlaceTheme();
        roomListResponse.peopleLimit = room.getPeopleLimit();
        roomListResponse.createdDate = room.getCreatedDate();
        return roomListResponse;
    }
}
