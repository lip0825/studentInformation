package com.lp.entity;

public class Students {

    private Integer Id;
    private String name;
    private Integer age;
    private String gender;
    private String number;
    private String address;
    private Integer status;

    public Students() {
    }

    public Students(Integer id, String name, Integer age, String gender, String number, String address, Integer status) {
        Id = id;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.number = number;
        this.address = address;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Students{" +
                "Id=" + Id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", gender='" + gender + '\'' +
                ", number='" + number + '\'' +
                ", address='" + address + '\'' +
                ", status=" + status +
                '}';
    }

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}

