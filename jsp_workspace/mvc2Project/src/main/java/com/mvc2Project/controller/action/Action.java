package com.mvc2Project.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	// execute 의 다형성을 위해 interface 생성 , 상속하여, 다형성 메소드 구현
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
