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

import com.entity.Renwujilu;
import com.server.RenwujiluServer;
import com.util.PageBean;
import net.sf.json.JSONObject;
import com.util.db;
import java.sql.SQLException;
import java.sql.*;
@Controller
public class RenwujiluController {
	@Resource
	private RenwujiluServer renwujiluService;


   
	@RequestMapping("addRenwujilu.do")
	public String addRenwujilu(HttpServletRequest request,Renwujilu renwujilu,HttpSession session) throws SQLException{
		Timestamp time=new Timestamp(System.currentTimeMillis());
		
		renwujilu.setAddtime(time.toString().substring(0, 19));
		renwujiluService.add(renwujilu);
		session.setAttribute("backxx", "添加成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		
		//session.setAttribute("backurl", "renwujiluList.do");
		
		return "redirect:postback.jsp";
		//return "redirect:renwujiluList.do";
		
		
		
	}
 
//	处理编辑
	@RequestMapping("doUpdateRenwujilu.do")
	public String doUpdateRenwujilu(int id,ModelMap map,Renwujilu renwujilu){
		renwujilu=renwujiluService.getById(id);
		map.put("renwujilu", renwujilu);
		return "renwujilu_updt";
	}
	
	
	
	
	
//	后台详细
	@RequestMapping("renwujiluDetail.do")
	public String renwujiluDetail(int id,ModelMap map,Renwujilu renwujilu){
		renwujilu=renwujiluService.getById(id);
		map.put("renwujilu", renwujilu);
		return "renwujilu_detail";
	}
//	前台详细
	@RequestMapping("rwjlDetail.do")
	public String rwjlDetail(int id,ModelMap map,Renwujilu renwujilu){
		renwujilu=renwujiluService.getById(id);
		map.put("renwujilu", renwujilu);
		return "renwujiludetail";
	}
//	
	@RequestMapping("updateRenwujilu.do")
	public String updateRenwujilu(int id,ModelMap map,Renwujilu renwujilu,HttpServletRequest request,HttpSession session){
		renwujiluService.update(renwujilu);
		session.setAttribute("backxx", "修改成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		return "redirect:postback.jsp";
		//String url = request.getHeader("Referer");
		//return "redirect:"+url;
		//return "redirect:renwujiluList.do";
	}

//	分页查询
	@RequestMapping("renwujiluList.do")
	public String renwujiluList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Renwujilu renwujilu, String bianhao, String xueke, String nianji, String xuesheng, String shijian, String shichang, String dizhi, String dianhua, String baochou, String beizhu, String jiaoshi, String issh){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(bianhao==null||bianhao.equals("")){pmap.put("bianhao", null);}else{pmap.put("bianhao", bianhao);}		if(xueke==null||xueke.equals("")){pmap.put("xueke", null);}else{pmap.put("xueke", xueke);}		if(nianji==null||nianji.equals("")){pmap.put("nianji", null);}else{pmap.put("nianji", nianji);}		if(xuesheng==null||xuesheng.equals("")){pmap.put("xuesheng", null);}else{pmap.put("xuesheng", xuesheng);}		if(shijian==null||shijian.equals("")){pmap.put("shijian", null);}else{pmap.put("shijian", shijian);}		if(shichang==null||shichang.equals("")){pmap.put("shichang", null);}else{pmap.put("shichang", shichang);}		if(dizhi==null||dizhi.equals("")){pmap.put("dizhi", null);}else{pmap.put("dizhi", dizhi);}		if(dianhua==null||dianhua.equals("")){pmap.put("dianhua", null);}else{pmap.put("dianhua", dianhua);}		if(baochou==null||baochou.equals("")){pmap.put("baochou", null);}else{pmap.put("baochou", baochou);}		if(beizhu==null||beizhu.equals("")){pmap.put("beizhu", null);}else{pmap.put("beizhu", beizhu);}		if(jiaoshi==null||jiaoshi.equals("")){pmap.put("jiaoshi", null);}else{pmap.put("jiaoshi", jiaoshi);}		
		int total=renwujiluService.getCount(pmap);
		pageBean.setTotal(total);
		List<Renwujilu> list=renwujiluService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "renwujilu_list";
	}
	
	@RequestMapping("renwujiluList3.do")
	public String renwujiluList3(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Renwujilu renwujilu, String bianhao, String xueke, String nianji, String xuesheng, String shijian, String shichang, String dizhi, String dianhua, String baochou, String beizhu, String jiaoshi, String issh,HttpServletRequest request){
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
		if(bianhao==null||bianhao.equals("")){pmap.put("bianhao", null);}else{pmap.put("bianhao", bianhao);}		if(xueke==null||xueke.equals("")){pmap.put("xueke", null);}else{pmap.put("xueke", xueke);}		if(nianji==null||nianji.equals("")){pmap.put("nianji", null);}else{pmap.put("nianji", nianji);}		if(shijian==null||shijian.equals("")){pmap.put("shijian", null);}else{pmap.put("shijian", shijian);}		if(shichang==null||shichang.equals("")){pmap.put("shichang", null);}else{pmap.put("shichang", shichang);}		if(dizhi==null||dizhi.equals("")){pmap.put("dizhi", null);}else{pmap.put("dizhi", dizhi);}		if(dianhua==null||dianhua.equals("")){pmap.put("dianhua", null);}else{pmap.put("dianhua", dianhua);}		if(baochou==null||baochou.equals("")){pmap.put("baochou", null);}else{pmap.put("baochou", baochou);}		if(beizhu==null||beizhu.equals("")){pmap.put("beizhu", null);}else{pmap.put("beizhu", beizhu);}		
		
		int total=renwujiluService.getCount(pmap);
		pageBean.setTotal(total);
		List<Renwujilu> list=renwujiluService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "renwujilu_list3";
	}	@RequestMapping("renwujiluList2.do")
	public String renwujiluList2(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Renwujilu renwujilu, String bianhao, String xueke, String nianji, String xuesheng, String shijian, String shichang, String dizhi, String dianhua, String baochou, String beizhu, String jiaoshi, String issh,HttpServletRequest request){
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
		
		pmap.put("jiaoshi", (String)request.getSession().getAttribute("username"));
		if(bianhao==null||bianhao.equals("")){pmap.put("bianhao", null);}else{pmap.put("bianhao", bianhao);}		if(xueke==null||xueke.equals("")){pmap.put("xueke", null);}else{pmap.put("xueke", xueke);}		if(nianji==null||nianji.equals("")){pmap.put("nianji", null);}else{pmap.put("nianji", nianji);}		if(shijian==null||shijian.equals("")){pmap.put("shijian", null);}else{pmap.put("shijian", shijian);}		if(shichang==null||shichang.equals("")){pmap.put("shichang", null);}else{pmap.put("shichang", shichang);}		if(dizhi==null||dizhi.equals("")){pmap.put("dizhi", null);}else{pmap.put("dizhi", dizhi);}		if(dianhua==null||dianhua.equals("")){pmap.put("dianhua", null);}else{pmap.put("dianhua", dianhua);}		if(baochou==null||baochou.equals("")){pmap.put("baochou", null);}else{pmap.put("baochou", baochou);}		if(beizhu==null||beizhu.equals("")){pmap.put("beizhu", null);}else{pmap.put("beizhu", beizhu);}		
		
		int total=renwujiluService.getCount(pmap);
		pageBean.setTotal(total);
		List<Renwujilu> list=renwujiluService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "renwujilu_list2";
	}	
	
	@RequestMapping("rwjlList.do")
	public String rwjlList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Renwujilu renwujilu, String bianhao, String xueke, String nianji, String xuesheng, String shijian, String shichang, String dizhi, String dianhua, String baochou, String beizhu, String jiaoshi, String issh){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(bianhao==null||bianhao.equals("")){pmap.put("bianhao", null);}else{pmap.put("bianhao", bianhao);}		if(xueke==null||xueke.equals("")){pmap.put("xueke", null);}else{pmap.put("xueke", xueke);}		if(nianji==null||nianji.equals("")){pmap.put("nianji", null);}else{pmap.put("nianji", nianji);}		if(xuesheng==null||xuesheng.equals("")){pmap.put("xuesheng", null);}else{pmap.put("xuesheng", xuesheng);}		if(shijian==null||shijian.equals("")){pmap.put("shijian", null);}else{pmap.put("shijian", shijian);}		if(shichang==null||shichang.equals("")){pmap.put("shichang", null);}else{pmap.put("shichang", shichang);}		if(dizhi==null||dizhi.equals("")){pmap.put("dizhi", null);}else{pmap.put("dizhi", dizhi);}		if(dianhua==null||dianhua.equals("")){pmap.put("dianhua", null);}else{pmap.put("dianhua", dianhua);}		if(baochou==null||baochou.equals("")){pmap.put("baochou", null);}else{pmap.put("baochou", baochou);}		if(beizhu==null||beizhu.equals("")){pmap.put("beizhu", null);}else{pmap.put("beizhu", beizhu);}		if(jiaoshi==null||jiaoshi.equals("")){pmap.put("jiaoshi", null);}else{pmap.put("jiaoshi", jiaoshi);}		
		int total=renwujiluService.getCount(pmap);
		pageBean.setTotal(total);
		List<Renwujilu> list=renwujiluService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "renwujilulist";
	}
	
	@RequestMapping("deleteRenwujilu.do")
	public String deleteRenwujilu(int id,HttpServletRequest request){
		renwujiluService.delete(id);
		String url = request.getHeader("Referer");
		return "redirect:"+url;
		//return "redirect:renwujiluList.do";
	}
	
	
}
