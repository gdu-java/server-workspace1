package com.goodee.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodee.model.dao.MemberDao;
import com.goodee.model.vo.MemberVo;

/**
 * Servlet implementation class selectOneMemberController
 */
@WebServlet("/selectOneMember")
public class SelectOneMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectOneMemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		
		
		MemberDao mDao = new MemberDao();
		
		MemberVo m = mDao.selectOneMember(userId);
		
		if(m != null) {
			request.setAttribute("member", m);
			request.getRequestDispatcher("/views/memberProfile.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/views/memberAdmin.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
