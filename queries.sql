insert into team(name,city) values('goodteam1','Faraway'),('goodteam2','Farback'),('goodteam3','Nearway');
insert into player(team_id,name,`number`,points) values
('1','good player',1,31),
('2','goodest player',2,31),
('3','best player',3,31),
('1','bestest player',5,31),
('2','tom player',22,31),
('3','bill player',31,31),
('1','fred player',13,31),
('2','sally player',62,31),
('3','samuel player',14,31);

select p.name,p.`number`,t.name,p.points
from team t inner join player p on t.id = p.team_id 
order by p.points desc;

select t.name ,sum(p.points)
from team t inner join player p on t.id = p.team_id 
group by t.id;