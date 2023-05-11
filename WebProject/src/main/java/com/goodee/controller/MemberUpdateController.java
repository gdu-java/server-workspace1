package com.goodee.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodee.model.dao.memberDao;
import com.goodee.model.vo.memberVo;

/**
 * Servlet implementation class MemberUpdateController
 */
@WebServlet("/updateMember")
public class MemberUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		
		memberDao mDao = new memberDao();
		
		memberVo m = mDao.selectOneMember(userId);
		
		request.setAttribute("member", m);
		request.getRequestDispatcher("/views/memberUpdate.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("utf-8");
		
		String userId = request.getParameter("userId");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");

		
		memberDao mDao = new memberDao();
		memberVo m = new memberVo();
		
		int result = mDao.updateMember(userId, email, phone, address);
		
		if(result > 0) {
			m = mDao.selectOneMember(userId);
			
			request.setAttribute("member", m);
			request.getRequestDispatcher("/selectOneMember").forward(request, response);
		}else {
			System.out.println("회원정보변경실패");
		}
		
	}

}
