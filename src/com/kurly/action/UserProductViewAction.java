package com.kurly.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kurly.controller.Action;
import com.kurly.controller.ActionForward;
import com.kurly.model.ProductDAO;
import com.kurly.model.ProductDTO;

public class UserProductViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// get 방식으로 넘어온 상품번호에 해당하는 상품의 
		// 상세 정보를 조회하여 View Page로 이동시키는 비지니스 로직
		
		int product_num = Integer.parseInt(request.getParameter("p_num").trim());
		
		ProductDAO dao = ProductDAO.getInstance();
		
		ProductDTO dto = dao.productCont(product_num);
		
		request.setAttribute("productCont", dto);
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		
		forward.setPath("user/user_product_detail.jsp");
		
		return forward;
	}

}