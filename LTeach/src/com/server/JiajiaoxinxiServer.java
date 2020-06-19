package com.server;

import java.util.List;

import java.util.Map;

import com.entity.Jiajiaoxinxi;

public interface JiajiaoxinxiServer {

  public int add(Jiajiaoxinxi po);

  public int update(Jiajiaoxinxi po);
  
  
  
  public int delete(int id);

  public List<Jiajiaoxinxi> getAll(Map<String,Object> map);
  public List<Jiajiaoxinxi> getsyjiajiaoxinxi1(Map<String,Object> map);
  public List<Jiajiaoxinxi> getsyjiajiaoxinxi2(Map<String,Object> map);
  public List<Jiajiaoxinxi> getsyjiajiaoxinxi3(Map<String,Object> map);
  public Jiajiaoxinxi quchongJiajiaoxinxi(Map<String, Object> acount);

  public Jiajiaoxinxi getById( int id);

  public List<Jiajiaoxinxi> getByPage(Map<String, Object> map);

  public int getCount(Map<String,Object> map);

  public List<Jiajiaoxinxi> select(Map<String, Object> map);
}
//	所有List
