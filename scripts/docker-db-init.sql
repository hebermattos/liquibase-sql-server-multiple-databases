USE [master]
GO

IF DB_ID('mydatabase') IS NOT NULL
  set noexec on 

CREATE DATABASE [mydatabase];
GO

USE [mydatabase]
GO