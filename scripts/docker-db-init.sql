USE [master]
GO

IF DB_ID('mydatabase') IS NOT NULL
  set noexec on 

CREATE DATABASE [mydatabase];
GO

USE [mydatabase]
GO

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);