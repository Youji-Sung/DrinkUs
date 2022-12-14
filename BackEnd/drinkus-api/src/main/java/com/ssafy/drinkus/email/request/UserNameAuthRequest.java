package com.ssafy.drinkus.email.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserNameAuthRequest {
    private String userName;
    private String authToken;
}
