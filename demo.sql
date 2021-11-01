use QuanLySinhVien;
select Address, count(id) as 'So luong HV'
from Student group by Address;
select S.id, S.name, avg(Mark) as AVG from Student S
join Mark M on S.id = M.StudentID
group by S.id, S.name having AVG > 15;
select S.id, S.name, avg(Mark) as AVG from Student S
join Mark M on S.id = M.StudentID
group by S.id, S.name
having AVG >= all (select avg(Mark) FROM Mark group by Mark.StudentID);