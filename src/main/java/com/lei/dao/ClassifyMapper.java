package com.lei.dao;

import com.lei.entity.Classify;

public interface ClassifyMapper {
    int deleteByPrimaryKey(String id);

    int insert(Classify record);

    int insertSelective(Classify record);

    Classify selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Classify record);

    int updateByPrimaryKey(Classify record);
}