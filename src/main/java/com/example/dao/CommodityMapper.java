package com.example.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.example.pojo.Commodity;

public interface CommodityMapper {
    int deleteByPrimaryKey(Integer commodityMeansid);

    int insert(Commodity record);

    int insertSelective(Commodity record);

    Commodity selectByPrimaryKey(Integer commodityMeansid);

    int updateByPrimaryKeySelective(Commodity record);

    int updateByPrimaryKey(Commodity record);
    
  
   
}