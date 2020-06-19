package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Renwujilu;

public interface RenwujiluMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Renwujilu record);

    int insertSelective(Renwujilu record);

    Renwujilu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Renwujilu record);
	
    int updateByPrimaryKey(Renwujilu record);
	public Renwujilu quchongRenwujilu(Map<String, Object> jiaoshi);
	public List<Renwujilu> getAll(Map<String, Object> map);
	public List<Renwujilu> getsyrenwujilu1(Map<String, Object> map);
	public List<Renwujilu> getsyrenwujilu3(Map<String, Object> map);
	public List<Renwujilu> getsyrenwujilu2(Map<String, Object> map);
	public int getCount(Map<String, Object> po);
	public List<Renwujilu> getByPage(Map<String, Object> map);
	public List<Renwujilu> select(Map<String, Object> map);
//	所有List
}

