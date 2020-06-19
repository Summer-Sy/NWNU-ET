package com.server;

import java.util.List;

import java.util.Map;

import com.entity.Jiajiaorenwu;

public interface JiajiaorenwuServer {

  public int add(Jiajiaorenwu po);

  public int update(Jiajiaorenwu po);
  
  
  
  public int delete(int id);

  public List<Jiajiaorenwu> getAll(Map<String,Object> map);
  public List<Jiajiaorenwu> getsyjiajiaorenwu1(Map<String,Object> map);
  public List<Jiajiaorenwu> getsyjiajiaorenwu2(Map<String,Object> map);
  public List<Jiajiaorenwu> getsyjiajiaorenwu3(Map<String,Object> map);
  public Jiajiaorenwu quchongJiajiaorenwu(Map<String, Object> acount);

  public Jiajiaorenwu getById( int id);

  public List<Jiajiaorenwu> getByPage(Map<String, Object> map);

  public int getCount(Map<String,Object> map);

  public List<Jiajiaorenwu> select(Map<String, Object> map);
}
//	所有List
