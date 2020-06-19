package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Jiajiaoxinxi;

public interface JiajiaoxinxiMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Jiajiaoxinxi record);

    int insertSelective(Jiajiaoxinxi record);

    Jiajiaoxinxi selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Jiajiaoxinxi record);
	
    int updateByPrimaryKey(Jiajiaoxinxi record);
	public Jiajiaoxinxi quchongJiajiaoxinxi(Map<String, Object> biaoti);
	public List<Jiajiaoxinxi> getAll(Map<String, Object> map);
	public List<Jiajiaoxinxi> getsyjiajiaoxinxi1(Map<String, Object> map);
	public List<Jiajiaoxinxi> getsyjiajiaoxinxi3(Map<String, Object> map);
	public List<Jiajiaoxinxi> getsyjiajiaoxinxi2(Map<String, Object> map);
	public int getCount(Map<String, Object> po);
	public List<Jiajiaoxinxi> getByPage(Map<String, Object> map);
	public List<Jiajiaoxinxi> select(Map<String, Object> map);
//	所有List
}

