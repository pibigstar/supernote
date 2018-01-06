package com.lei.dao;

import java.util.List;

import com.lei.entity.Note;

public interface NoteMapper {
    int deleteByPrimaryKey(String id);

    int insert(Note record);

    int insertSelective(Note record);

    Note selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Note record);

    int updateByPrimaryKey(Note record);
    
    int saveOrUpdate(Note record);
    
    int selectCount(String id);

	List<Note> getNotesByClassifyId(String id);

	List<Note> getListByUserId(String userId);
}