package com.weibin.dao;

import com.weibin.bean.Department;
import com.weibin.bean.DepartmentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DepartmentMapper {

    long countByExample(DepartmentExample example);


    int deleteByExample(DepartmentExample example);


    int deleteByPrimaryKey(Integer deptId);


    int insert(Department record);

    int insertSelective(Department record);


    List<Department> selectByExample(DepartmentExample example);


    Department selectByPrimaryKey(Integer deptId);


    int updateByExampleSelective(@Param("record") Department record, @Param("example") DepartmentExample example);


    int updateByExample(@Param("record") Department record, @Param("example") DepartmentExample example);



    int updateByPrimaryKeySelective(Department record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_dept
     *
     * @mbg.generated Mon Sep 11 16:00:10 CST 2017
     */
    int updateByPrimaryKey(Department record);
}