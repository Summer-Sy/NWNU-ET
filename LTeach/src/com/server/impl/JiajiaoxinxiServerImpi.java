package com.server.impl;

import java.util.List;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.JiajiaoxinxiMapper;
import com.entity.Jiajiaoxinxi;
import com.server.JiajiaoxinxiServer;
@Service
public class JiajiaoxinxiServerImpi implements JiajiaoxinxiServer {
   @Resource
   private JiajiaoxinxiMapper gdao;
	@Override
	public int add(Jiajiaoxinxi po) {
		return gdao.insert(po);
	}

	@Override
	public int update(Jiajiaoxinxi po) {
		return gdao.updateByPrimaryKeySelective(po);
	}

	
	
	@Override
	public int delete(int id) {
		return gdao.deleteByPrimaryKey(id);
	}

	@Override
	public List<Jiajiaoxinxi> getAll(Map<String, Object> map) {
		return gdao.getAll(map);
	}
	
	public List<Jiajiaoxinxi> getsyjiajiaoxinxi1(Map<String, Object> map) {
		return gdao.getsyjiajiaoxinxi1(map);
	}
	public List<Jiajiaoxinxi> getsyjiajiaoxinxi2(Map<String, Object> map) {
		return gdao.getsyjiajiaoxinxi2(map);
	}
	public List<Jiajiaoxinxi> getsyjiajiaoxinxi3(Map<String, Object> map) {
		return gdao.getsyjiajiaoxinxi3(map);
	}
	
	@Override
	public Jiajiaoxinxi quchongJiajiaoxinxi(Map<String, Object> account) {
		return gdao.quchongJiajiaoxinxi(account);
	}

	@Override
	public List<Jiajiaoxinxi> getByPage(Map<String, Object> map) {
		return gdao.getByPage(map);
	}

	@Override
	public int getCount(Map<String, Object> map) {
		return gdao.getCount(map);
	}

	@Override
	public List<Jiajiaoxinxi> select(Map<String, Object> map) {
		return gdao.select(map);
	}

	@Override
	public Jiajiaoxinxi getById(int id) {
		return gdao.selectByPrimaryKey(id);
	}

}

