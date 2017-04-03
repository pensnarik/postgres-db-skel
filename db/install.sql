\set ON_ERROR_STOP 1

create database :database;

\connect :database

create extension plpythonu;

/* Write your SQL code here. You may include scripts from directories "data" and "schema"

   CREATE TABLE test (id serial, value text);

   \i data/public.test.sql
   \i schema/public/tables/test.sql
*/
