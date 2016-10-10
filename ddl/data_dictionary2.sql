-- data dictionary

select * from dictionary;

select * from user_objects;

-- table 조회
select * 
  from user_objects
  where object_type = 'TABLE';
   