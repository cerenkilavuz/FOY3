create database [FOY3] on primary 
(
name = foy3_data,
filename = 'C:\FOY3\foy3data.mdf',
size = 8MB,
maxsize = unlimited,
filegrowth = 10%
)
log on
(
name = foy3_log,
filename = 'C:\FOY3\foy3log.ldf',
size = 8MB,
maxsize = unlimited,
filegrowth = 10%
)