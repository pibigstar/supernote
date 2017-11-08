package com.lei.dao;

import java.util.List;

import com.lei.entity.Classify;

public interface ClassifyMapper {
    int deleteByPrimaryKey(String id);

    int insert(Classify record);

    int insertSelective(Classify record);

    Classify selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Classify record);

    int updateByPrimaryKey(Classify record);

	List<Classify> getClassifyByPid(String pid);
}