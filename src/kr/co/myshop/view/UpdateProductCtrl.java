package kr.co.myshop.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.myshop.vo.Category;
import kr.co.myshop.vo.Product;

@WebServlet("/UpdateProductCtrl")
public class UpdateProductCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static String DRIVER = "com.mysql.cj.jdbc.Driver";
	private final static String URL = "jdbc:mysql://localhost:3306/myshop?serverTimezone=Asia/Seoul";
	private final static String USER = "root";
	private final static String PASS = "a1234";
	String sql = "";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int proNo = Integer.parseInt(request.getParameter("proNo"));
		try {
			//데이터베이스 연결
			Class.forName(DRIVER);
			sql = "select * from product where prono=?";
			Connection con = DriverManager.getConnection(URL, USER, PASS);
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, proNo);
			ResultSet rs = pstmt.executeQuery();
			
			//결과를 데이터베이스로 부터 받아서 VO에 저장
			Product vo = new Product();
			if(rs.next()){
				vo.setProNo(rs.getInt("prono"));
				vo.setCateNo(rs.getInt("cateno"));
				vo.setProName(rs.getString("proname"));
				vo.setProSpec(rs.getString("prospec"));
				vo.setOriPrice(rs.getInt("oriprice"));
				vo.setDiscountRate(rs.getDouble("discountrate"));
				vo.setProPic(rs.getString("propic"));
				vo.setProPic2(rs.getString("propic2"));
			}
			request.setAttribute("pro", vo);
			rs.close();
			pstmt.close();
			
			sql = "select * from category";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			//결과를 데이터베이스로 부터 받아서 리스트로 저장
			List<Category> cateList = new ArrayList<Category>();
			while(rs.next()){
				Category cate = new Category();
				cate.setCateNo(rs.getInt("cateno"));
				cate.setCateName(rs.getString("catename"));
				cateList.add(cate);
			}
			request.setAttribute("cateList", cateList);
			
			//product/updateProduct.jsp 에 포워딩
			RequestDispatcher view = request.getRequestDispatcher("./product/updateProduct.jsp");
			view.forward(request, response);
			
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
}