package com.controller;

import java.io.File;
import java.io.IOException;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.entity.Jiajiaorenwu;
import com.server.JiajiaorenwuServer;
import com.util.PageBean;
import net.sf.json.JSONObject;
import com.util.db;
import java.sql.SQLException;
import java.sql.*;
@Controller
public class JiajiaorenwuController {
	@Resource
	private JiajiaorenwuServer jiajiaorenwuService;


   
	@RequestMapping("addJiajiaorenwu.do")
	public String addJiajiaorenwu(HttpServletRequest request,Jiajiaorenwu jiajiaorenwu,HttpSession session) throws SQLException{
		Timestamp time=new Timestamp(System.currentTimeMillis());
		
		jiajiaorenwu.setAddtime(time.toString().substring(0, 19));
		jiajiaorenwuService.add(jiajiaorenwu);
		session.setAttribute("backxx", "添加成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		
		//session.setAttribute("backurl", "jiajiaorenwuList.do");
		
		return "redirect:postback.jsp";
		//return "redirect:jiajiaorenwuList.do";
		
		
		
	}
 
//	处理编辑
	@RequestMapping("doUpdateJiajiaorenwu.do")
	public String doUpdateJiajiaorenwu(int id,ModelMap map,Jiajiaorenwu jiajiaorenwu){
		jiajiaorenwu=jiajiaorenwuService.getById(id);
		map.put("jiajiaorenwu", jiajiaorenwu);
		return "jiajiaorenwu_updt";
	}
	
	
	
	
	
//	后台详细
	@RequestMapping("jiajiaorenwuDetail.do")
	public String jiajiaorenwuDetail(int id,ModelMap map,Jiajiaorenwu jiajiaorenwu){
		jiajiaorenwu=jiajiaorenwuService.getById(id);
		map.put("jiajiaorenwu", jiajiaorenwu);
		return "jiajiaorenwu_detail";
	}
//	前台详细
	@RequestMapping("jjrwDetail.do")
	public String jjrwDetail(int id,ModelMap map,Jiajiaorenwu jiajiaorenwu){
		jiajiaorenwu=jiajiaorenwuService.getById(id);
		map.put("jiajiaorenwu", jiajiaorenwu);
		return "jiajiaorenwudetail";
	}
//	
	@RequestMapping("updateJiajiaorenwu.do")
	public String updateJiajiaorenwu(int id,ModelMap map,Jiajiaorenwu jiajiaorenwu,HttpServletRequest request,HttpSession session){
		jiajiaorenwuService.update(jiajiaorenwu);
		session.setAttribute("backxx", "修改成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		return "redirect:postback.jsp";
		//String url = request.getHeader("Referer");
		//return "redirect:"+url;
		//return "redirect:jiajiaorenwuList.do";
	}

//	分页查询
	@RequestMapping("jiajiaorenwuList.do")
	public String jiajiaorenwuList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Jiajiaorenwu jiajiaorenwu, String bianhao, String xueke, String nianji, String shijian, String shichang, String dizhi, String dianhua, String baochou, String jianjie, String xuesheng, String issh){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(bianhao==null||bianhao.equals("")){pmap.put("bianhao", null);}else{pmap.put("bianhao", bianhao);}		if(xueke==null||xueke.equals("")){pmap.put("xueke", null);}else{pmap.put("xueke", xueke);}		if(nianji==null||nianji.equals("")){pmap.put("nianji", null);}else{pmap.put("nianji", nianji);}		if(shijian==null||shijian.equals("")){pmap.put("shijian", null);}else{pmap.put("shijian", shijian);}		if(shichang==null||shichang.equals("")){pmap.put("shichang", null);}else{pmap.put("shichang", shichang);}		if(dizhi==null||dizhi.equals("")){pmap.put("dizhi", null);}else{pmap.put("dizhi", dizhi);}		if(dianhua==null||dianhua.equals("")){pmap.put("dianhua", null);}else{pmap.put("dianhua", dianhua);}		if(baochou==null||baochou.equals("")){pmap.put("baochou", null);}else{pmap.put("baochou", baochou);}		if(jianjie==null||jianjie.equals("")){pmap.put("jianjie", null);}else{pmap.put("jianjie", jianjie);}		if(xuesheng==null||xuesheng.equals("")){pmap.put("xuesheng", null);}else{pmap.put("xuesheng", xuesheng);}		
		int total=jiajiaorenwuService.getCount(pmap);
		pageBean.setTotal(total);
		List<Jiajiaorenwu> list=jiajiaorenwuService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "jiajiaorenwu_list";
	}
	
	@RequestMapping("jiajiaorenwuList2.do")
	public String jiajiaorenwuList2(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Jiajiaorenwu jiajiaorenwu, String bianhao, String xueke, String nianji, String shijian, String shichang, String dizhi, String dianhua, String baochou, String jianjie, String xuesheng, String issh,HttpServletRequest request){
		/*if(session.getAttribute("user")==null){
			return "login";
		}*/
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		pmap.put("xuesheng", (String)request.getSession().getAttribute("username"));
		if(bianhao==null||bianhao.equals("")){pmap.put("bianhao", null);}else{pmap.put("bianhao", bianhao);}		if(xueke==null||xueke.equals("")){pmap.put("xueke", null);}else{pmap.put("xueke", xueke);}		if(nianji==null||nianji.equals("")){pmap.put("nianji", null);}else{pmap.put("nianji", nianji);}		if(shijian==null||shijian.equals("")){pmap.put("shijian", null);}else{pmap.put("shijian", shijian);}		if(shichang==null||shichang.equals("")){pmap.put("shichang", null);}else{pmap.put("shichang", shichang);}		if(dizhi==null||dizhi.equals("")){pmap.put("dizhi", null);}else{pmap.put("dizhi", dizhi);}		if(dianhua==null||dianhua.equals("")){pmap.put("dianhua", null);}else{pmap.put("dianhua", dianhua);}		if(baochou==null||baochou.equals("")){pmap.put("baochou", null);}else{pmap.put("baochou", baochou);}		if(jianjie==null||jianjie.equals("")){pmap.put("jianjie", null);}else{pmap.put("jianjie", jianjie);}		
		
		int total=jiajiaorenwuService.getCount(pmap);
		pageBean.setTotal(total);
		List<Jiajiaorenwu> list=jiajiaorenwuService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "jiajiaorenwu_list2";
	}	
	
	@RequestMapping("jjrwList.do")
	public String jjrwList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Jiajiaorenwu jiajiaorenwu, String bianhao, String xueke, String nianji, String shijian, String shichang, String dizhi, String dianhua, String baochou, String jianjie, String xuesheng, String issh){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(bianhao==null||bianhao.equals("")){pmap.put("bianhao", null);}else{pmap.put("bianhao", bianhao);}		if(xueke==null||xueke.equals("")){pmap.put("xueke", null);}else{pmap.put("xueke", xueke);}		if(nianji==null||nianji.equals("")){pmap.put("nianji", null);}else{pmap.put("nianji", nianji);}		if(shijian==null||shijian.equals("")){pmap.put("shijian", null);}else{pmap.put("shijian", shijian);}		if(shichang==null||shichang.equals("")){pmap.put("shichang", null);}else{pmap.put("shichang", shichang);}		if(dizhi==null||dizhi.equals("")){pmap.put("dizhi", null);}else{pmap.put("dizhi", dizhi);}		if(dianhua==null||dianhua.equals("")){pmap.put("dianhua", null);}else{pmap.put("dianhua", dianhua);}		if(baochou==null||baochou.equals("")){pmap.put("baochou", null);}else{pmap.put("baochou", baochou);}		if(jianjie==null||jianjie.equals("")){pmap.put("jianjie", null);}else{pmap.put("jianjie", jianjie);}		if(xuesheng==null||xuesheng.equals("")){pmap.put("xuesheng", null);}else{pmap.put("xuesheng", xuesheng);}		
		int total=jiajiaorenwuService.getCount(pmap);
		pageBean.setTotal(total);
		List<Jiajiaorenwu> list=jiajiaorenwuService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "jiajiaorenwulist";
	}
	
	@RequestMapping("deleteJiajiaorenwu.do")
	public String deleteJiajiaorenwu(int id,HttpServletRequest request){
		jiajiaorenwuService.delete(id);
		String url = request.getHeader("Referer");
		return "redirect:"+url;
		//return "redirect:jiajiaorenwuList.do";
	}
	
	
}
