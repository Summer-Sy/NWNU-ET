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

import com.entity.Jiajiaoxinxi;
import com.server.JiajiaoxinxiServer;
import com.util.PageBean;
import net.sf.json.JSONObject;
import com.util.db;
import java.sql.SQLException;
import java.sql.*;
@Controller
public class JiajiaoxinxiController {
	@Resource
	private JiajiaoxinxiServer jiajiaoxinxiService;


   
	@RequestMapping("addJiajiaoxinxi.do")
	public String addJiajiaoxinxi(HttpServletRequest request,Jiajiaoxinxi jiajiaoxinxi,HttpSession session) throws SQLException{
		Timestamp time=new Timestamp(System.currentTimeMillis());
		
		jiajiaoxinxi.setAddtime(time.toString().substring(0, 19));
		jiajiaoxinxiService.add(jiajiaoxinxi);
		session.setAttribute("backxx", "添加成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		
		//session.setAttribute("backurl", "jiajiaoxinxiList.do");
		
		return "redirect:postback.jsp";
		//return "redirect:jiajiaoxinxiList.do";
		
		
		
	}
 
//	处理编辑
	@RequestMapping("doUpdateJiajiaoxinxi.do")
	public String doUpdateJiajiaoxinxi(int id,ModelMap map,Jiajiaoxinxi jiajiaoxinxi){
		jiajiaoxinxi=jiajiaoxinxiService.getById(id);
		map.put("jiajiaoxinxi", jiajiaoxinxi);
		return "jiajiaoxinxi_updt";
	}
	
	
	
	
	
//	后台详细
	@RequestMapping("jiajiaoxinxiDetail.do")
	public String jiajiaoxinxiDetail(int id,ModelMap map,Jiajiaoxinxi jiajiaoxinxi){
		jiajiaoxinxi=jiajiaoxinxiService.getById(id);
		map.put("jiajiaoxinxi", jiajiaoxinxi);
		return "jiajiaoxinxi_detail";
	}
//	前台详细
	@RequestMapping("jjxxDetail.do")
	public String jjxxDetail(int id,ModelMap map,Jiajiaoxinxi jiajiaoxinxi){
		jiajiaoxinxi=jiajiaoxinxiService.getById(id);
		map.put("jiajiaoxinxi", jiajiaoxinxi);
		return "jiajiaoxinxidetail";
	}
//	
	@RequestMapping("updateJiajiaoxinxi.do")
	public String updateJiajiaoxinxi(int id,ModelMap map,Jiajiaoxinxi jiajiaoxinxi,HttpServletRequest request,HttpSession session){
		jiajiaoxinxiService.update(jiajiaoxinxi);
		session.setAttribute("backxx", "修改成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		return "redirect:postback.jsp";
		//String url = request.getHeader("Referer");
		//return "redirect:"+url;
		//return "redirect:jiajiaoxinxiList.do";
	}

//	分页查询
	@RequestMapping("jiajiaoxinxiList.do")
	public String jiajiaoxinxiList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Jiajiaoxinxi jiajiaoxinxi, String biaoti, String xueke, String shihenianji, String shangkeshijian, String lianxifangshi, String jianjie, String faburen, String issh){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(biaoti==null||biaoti.equals("")){pmap.put("biaoti", null);}else{pmap.put("biaoti", biaoti);}
		if(xueke==null||xueke.equals("")){pmap.put("xueke", null);}else{pmap.put("xueke", xueke);}
		if(shihenianji==null||shihenianji.equals("")){pmap.put("shihenianji", null);}else{pmap.put("shihenianji", shihenianji);}
		if(shangkeshijian==null||shangkeshijian.equals("")){pmap.put("shangkeshijian", null);}else{pmap.put("shangkeshijian", shangkeshijian);}
		if(lianxifangshi==null||lianxifangshi.equals("")){pmap.put("lianxifangshi", null);}else{pmap.put("lianxifangshi", lianxifangshi);}
		if(jianjie==null||jianjie.equals("")){pmap.put("jianjie", null);}else{pmap.put("jianjie", jianjie);}
		if(faburen==null||faburen.equals("")){pmap.put("faburen", null);}else{pmap.put("faburen", faburen);}
		
		int total=jiajiaoxinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Jiajiaoxinxi> list=jiajiaoxinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "jiajiaoxinxi_list";
	}
	
	@RequestMapping("jiajiaoxinxiList2.do")
	public String jiajiaoxinxiList2(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Jiajiaoxinxi jiajiaoxinxi, String biaoti, String xueke, String shihenianji, String shangkeshijian, String lianxifangshi, String jianjie, String faburen, String issh,HttpServletRequest request){
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
		
		pmap.put("faburen", (String)request.getSession().getAttribute("username"));
		if(biaoti==null||biaoti.equals("")){pmap.put("biaoti", null);}else{pmap.put("biaoti", biaoti);}
		if(xueke==null||xueke.equals("")){pmap.put("xueke", null);}else{pmap.put("xueke", xueke);}
		if(shihenianji==null||shihenianji.equals("")){pmap.put("shihenianji", null);}else{pmap.put("shihenianji", shihenianji);}
		if(shangkeshijian==null||shangkeshijian.equals("")){pmap.put("shangkeshijian", null);}else{pmap.put("shangkeshijian", shangkeshijian);}
		if(lianxifangshi==null||lianxifangshi.equals("")){pmap.put("lianxifangshi", null);}else{pmap.put("lianxifangshi", lianxifangshi);}
		if(jianjie==null||jianjie.equals("")){pmap.put("jianjie", null);}else{pmap.put("jianjie", jianjie);}
		
		
		int total=jiajiaoxinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Jiajiaoxinxi> list=jiajiaoxinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "jiajiaoxinxi_list2";
	}
	
	@RequestMapping("jjxxList.do")
	public String jjxxList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Jiajiaoxinxi jiajiaoxinxi, String biaoti, String xueke, String shihenianji, String shangkeshijian, String lianxifangshi, String jianjie, String faburen, String issh){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(biaoti==null||biaoti.equals("")){pmap.put("biaoti", null);}else{pmap.put("biaoti", biaoti);}
		if(xueke==null||xueke.equals("")){pmap.put("xueke", null);}else{pmap.put("xueke", xueke);}
		if(shihenianji==null||shihenianji.equals("")){pmap.put("shihenianji", null);}else{pmap.put("shihenianji", shihenianji);}
		if(shangkeshijian==null||shangkeshijian.equals("")){pmap.put("shangkeshijian", null);}else{pmap.put("shangkeshijian", shangkeshijian);}
		if(lianxifangshi==null||lianxifangshi.equals("")){pmap.put("lianxifangshi", null);}else{pmap.put("lianxifangshi", lianxifangshi);}
		if(jianjie==null||jianjie.equals("")){pmap.put("jianjie", null);}else{pmap.put("jianjie", jianjie);}
		if(faburen==null||faburen.equals("")){pmap.put("faburen", null);}else{pmap.put("faburen", faburen);}
		
		int total=jiajiaoxinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Jiajiaoxinxi> list=jiajiaoxinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "jiajiaoxinxilist";
	}
	
	@RequestMapping("deleteJiajiaoxinxi.do")
	public String deleteJiajiaoxinxi(int id,HttpServletRequest request){
		jiajiaoxinxiService.delete(id);
		String url = request.getHeader("Referer");
		return "redirect:"+url;
		//return "redirect:jiajiaoxinxiList.do";
	}
	
	
}
