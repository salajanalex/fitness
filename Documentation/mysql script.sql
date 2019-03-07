drop schema if exists `fitness` ;
create schema `fitness`;

use `fitness`;

drop table if exists `fitness`.`user`;
drop table if exists `fitness`.`announcement`;
drop table if exists `fitness`.`event`;
drop table if exists `fitness`.`schedule`;
drop table if exists `fitness`.`gallery`;

create table `fitness`.`user`(
	`iduser` bigint(20) not null auto_increment,
    `username` varchar(100) not null,
    `password` varchar(100) null default null,
    `email` varchar(100),
    primary key(`iduser`)
    );
    
create table `fitness`.`announcement` (
	`idannouncement` bigint(20) not null auto_increment,
    `title` varchar(255) not null,
    `content` varchar(5000),
    primary key(`idannouncement`)
    );
    
create table `fitness`.`event` (
	`idevent` bigint(20) not null auto_increment,
	`title` varchar(255) not null,
    `description` varchar(5000),
    `datetime` datetime,
    primary key(`idevent`)
    );
   
   -- "null default null"  is redundant, same if not specify anything at all
create table `fitness`.`schedule` (
	`idschedule` bigint(20) not null auto_increment,
	`MONDAY` time null default null,
    `TUESDAY` time null default null,
    `WEDNESDAY` time null default null,
    `THURSDAY` time null default null,
    `FRIDAY` time null default null,
    `SATURDAY` time null default null,
    `SUNDAY` time null default null,
    `location` varchar(255) null default null,
    primary key(`idschedule`)
    );
    
create table `fitness`.`gallery` (
	`idpicture` bigint(20) not null auto_increment,
    `picture` longblob,
    primary key(`idpicture`)
    );