package com.weibin.bean;

public class Department {

    public Department() {
        super();
    }

    public Department(Integer deptId, String deptName) {
        super();
        this.deptId = deptId;
        this.deptName = deptName;
    }


    private Integer deptId;


    private String deptName;


    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName == null ? null : deptName.trim();
    }
}