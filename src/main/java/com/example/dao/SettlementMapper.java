package com.example.dao;

import com.example.pojo.Settlement;

public interface SettlementMapper {
    int deleteByPrimaryKey(Integer settlementid);

    int insert(Settlement record);

    int insertSelective(Settlement record);

    Settlement selectByPrimaryKey(Integer settlementid);

    int updateByPrimaryKeySelective(Settlement record);

    int updateByPrimaryKey(Settlement record);
}