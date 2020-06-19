package com.server.impl;

import java.util.List;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.RenwujiluMapper;
import com.entity.Renwujilu;
import com.server.RenwujiluServer;
@Service
public class RenwujiluServerImpi implements RenwujiluServer {
   @Resource
   private RenwujiluMapper gdao;
	@Override
	public int add(Renwujilu po) {
		return gdao.insert(po);
	}

	@Override
	public int update(Renwujilu po) {
		return gdao.updateByPrimaryKeySelective(po);
	}

	
	
	@Override
	public int delete(int id) {
		return gdao.deleteByPrimaryKey(id);
	}

	@Override
	public List<Renwujilu> getAll(Map<String, Object> map) {
		return gdao.getAll(map);
	}
	
	public List<Renwujilu> getsyrenwujilu1(Map<String, Object> map) {
		return gdao.getsyrenwujilu1(map);
	}
	public List<Renwujilu> getsyrenwujilu2(Map<String, Object> map) {
		return gdao.getsyrenwujilu2(map);
	}
	public List<Renwujilu> getsyrenwujilu3(Map<String, Object> map) {
		return gdao.getsyrenwujilu3(map);
	}
	
	@Override
	public Renwujilu quchongRenwujilu(Map<String, Object> account) {
		return gdao.quchongRenwujilu(account);
	}

	@Override
	public List<Renwujilu> getByPage(Map<String, Object> map) {
		return gdao.getByPage(map);
	}

	@Override
	public int getCount(Map<String, Object> map) {
		return gdao.getCount(map);
	}

	@Override
	public List<Renwujilu> select(Map<String, Object> map) {
		return gdao.select(map);
	}

	@Override
	public Renwujilu getById(int id) {
		return gdao.selectByPrimaryKey(id);
	}

}

