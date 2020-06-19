package com.server;

import java.util.List;

import java.util.Map;

import com.entity.Renwujilu;

public interface RenwujiluServer {

  public int add(Renwujilu po);

  public int update(Renwujilu po);
  
  
  
  public int delete(int id);

  public List<Renwujilu> getAll(Map<String,Object> map);
  public List<Renwujilu> getsyrenwujilu1(Map<String,Object> map);
  public List<Renwujilu> getsyrenwujilu2(Map<String,Object> map);
  public List<Renwujilu> getsyrenwujilu3(Map<String,Object> map);
  public Renwujilu quchongRenwujilu(Map<String, Object> acount);

  public Renwujilu getById( int id);

  public List<Renwujilu> getByPage(Map<String, Object> map);

  public int getCount(Map<String,Object> map);

  public List<Renwujilu> select(Map<String, Object> map);
}
//	所有List
