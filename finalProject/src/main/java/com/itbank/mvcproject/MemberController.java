package com.itbank.mvcproject;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberController {

	@Autowired
	@Qualifier("memberdao")
	MemberDAO memberDAO;
	
	//	로그인한 id의 이름과 입력한 이름 비교
	@RequestMapping("nameCheck")
	public void nameCheck(String id, String name, Model model) {
		String nameCheck = memberDAO.nameCheck(id, name);
		model.addAttribute("nameCheck", nameCheck);
	}
	
	@RequestMapping("login")
	public void login(String id, String pw, Model model) {
		System.out.println(id + pw);
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("id", id);
		map.put("pw", pw);
		String result = memberDAO.login(map);
		model.addAttribute("id", result);
	}

@RequestMapping("memberInsert.do")
public void insert(MemberDTO memberDTO) throws Exception{
	memberDAO.insert(memberDTO);
}

@RequestMapping("memberDelete.do")
public void delete(MemberDTO memberDTO) throws Exception {
  memberDAO.delete(memberDTO);
}

@RequestMapping("memberUpdate.do")
public void update(MemberDTO memberDTO) throws Exception {
  memberDAO.update(memberDTO);
}

@RequestMapping("memberSelect.do")
public void select(MemberDTO memberDTO, Model model) throws Exception {
 List<MemberDTO> list = memberDAO.select(memberDTO);
 model.addAttribute("list", list);
}
}
