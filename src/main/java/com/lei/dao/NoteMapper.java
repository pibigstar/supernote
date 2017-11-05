package com.lei.dao;

import com.lei.entity.Note;

public interface NoteMapper {
    int deleteByPrimaryKey(String id);

    int insert(Note record);

    int insertSelective(Note record);

    Note selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Note record);

    int updateByPrimaryKey(Note record);
}