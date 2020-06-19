package com.server.impl;

import java.util.List;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.JiajiaorenwuMapper;
import com.entity.Jiajiaorenwu;
import com.server.JiajiaorenwuServer;
@Service
public class JiajiaorenwuServerImpi implements JiajiaorenwuServer {
   @Resource
   private JiajiaorenwuMapper gdao;
	@Override
	public int add(Jiajiaorenwu po) {
		return gdao.insert(po);
	}

	@Override
	public int update(Jiajiaorenwu po) {
		return gdao.updateByPrimaryKeySelective(po);
	}

	
	
	@Override
	public int delete(int id) {
		return gdao.deleteByPrimaryKey(id);
	}

	@Override
	public List<Jiajiaorenwu> getAll(Map<String, Object> map) {
		return gdao.getAll(map);
	}
	
	public List<Jiajiaorenwu> getsyjiajiaorenwu1(Map<String, Object> map) {
		return gdao.getsyjiajiaorenwu1(map);
	}
	public List<Jiajiaorenwu> getsyjiajiaorenwu2(Map<String, Object> map) {
		return gdao.getsyjiajiaorenwu2(map);
	}
	public List<Jiajiaorenwu> getsyjiajiaorenwu3(Map<String, Object> map) {
		return gdao.getsyjiajiaorenwu3(map);
	}
	
	@Override
	public Jiajiaorenwu quchongJiajiaorenwu(Map<String, Object> account) {
		return gdao.quchongJiajiaorenwu(account);
	}

	@Override
	public List<Jiajiaorenwu> getByPage(Map<String, Object> map) {
		return gdao.getByPage(map);
	}

	@Override
	public int getCount(Map<String, Object> map) {
		return gdao.getCount(map);
	}

	@Override
	public List<Jiajiaorenwu> select(Map<String, Object> map) {
		return gdao.select(map);
	}

	@Override
	public Jiajiaorenwu getById(int id) {
		return gdao.selectByPrimaryKey(id);
	}

}

