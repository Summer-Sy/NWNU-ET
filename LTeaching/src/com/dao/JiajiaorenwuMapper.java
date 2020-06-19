package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Jiajiaorenwu;

public interface JiajiaorenwuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Jiajiaorenwu record);

    int insertSelective(Jiajiaorenwu record);

    Jiajiaorenwu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Jiajiaorenwu record);
	
    int updateByPrimaryKey(Jiajiaorenwu record);
	public Jiajiaorenwu quchongJiajiaorenwu(Map<String, Object> xuesheng);
	public List<Jiajiaorenwu> getAll(Map<String, Object> map);
	public List<Jiajiaorenwu> getsyjiajiaorenwu1(Map<String, Object> map);
	public List<Jiajiaorenwu> getsyjiajiaorenwu3(Map<String, Object> map);
	public List<Jiajiaorenwu> getsyjiajiaorenwu2(Map<String, Object> map);
	public int getCount(Map<String, Object> po);
	public List<Jiajiaorenwu> getByPage(Map<String, Object> map);
	public List<Jiajiaorenwu> select(Map<String, Object> map);
//	所有List
}

