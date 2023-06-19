package com.khanhnd.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.khanhnd.common.PageInfo;
import com.khanhnd.common.PageType;
import com.khanhnd.dao.VideoDao;
import com.khanhnd.model.Video;


@WebServlet({"/Admin/VideosManagement", "/Admin/VideosManagement/create", 
	"/Admin/VideosManagement/update", "/Admin/VideosManagement/delete", 
	"/Admin/VideosManagement/reset", "/Admin/VideosManagement/edit"})
@MultipartConfig
public class VideosManagementServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		if (url.contains("edit")) {
			edit(request, response);
			return;
		}
		if (url.contains("delete")) {
			edit(request, response);
			return;
		}
		if (url.contains("reset")) {
			edit(request, response);
			return;
		}
		Video video = new Video();
		video.setPoster("/images/desktop.svg");
		
		request.setAttribute("video", video);
		
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_TYPE);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		
		if (url.contains("create")) {
			create(request, response);
			return;
			
		}
		if (url.contains("delete")) {
			create(request, response);
			return;
			
		}
		if (url.contains("update")) {
			create(request, response);
			return;
			
		}
		if (url.contains("reset")) {
			create(request, response);
			return;
			
		}
	}


	private void edit(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}


	


	private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Video video = new Video();
		try {
			
			BeanUtils.populate(video, request.getParameterMap());
			
			video.setPoster("uploads/");
			
			VideoDao dao = new VideoDao();
			dao.insert(video);
			
			request.setAttribute("video", video);
			request.setAttribute("message", "video inserted");
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_TYPE);
	}

}
