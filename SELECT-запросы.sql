--- Название и продолжительность самого длительного трека.
select trackname, duration 
from tracks
where duration = (select max(duration) from tracks)

--- Название треков, продолжительность которых не менее 3,5 минут.
select trackname, duration 
from tracks
where duration < 210

--- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select songbookname, year
from songbooks
where year between 2018 and 2020

--- Исполнители, чьё имя состоит из одного слова.
select artistname  
from artists
where artistname not like '% %'

--- Название треков, которые содержат слово «мой» или «my».
select trackname   
from tracks
where trackname like '%мой%' or trackname like '%my%'

--- Количество исполнителей в каждом жанре.
select g.genrename, count(a.artistname) cnt
from artists a
join artistgenres ag on a.artistid = ag.artistid 
join genres g on ag.genreid = g.genreid
group by g.genrename

--- Количество треков, вошедших в альбомы 2019–2020 годов
select count(t.trackname) cnt
from tracks t
join albums a on t.albumid = a.albumid 
where a.year between 2019 and 2020

--- Средняя продолжительность треков по каждому альбому.
select a.albumname, avg(duration) avg_duration
from albums a 
join tracks t on t.albumid = a.albumid
group by a.albumname

--- Все исполнители, которые не выпустили альбомы в 2020 году.
select artistname
from artists
where artistid not in (
    select aa.artistid
    from artistalbums aa
    join albums a on aa.albumid = a.albumid
    where a.year = 2020
);

--- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select s.songbookname 
from songbooks s 
join tracksongbooks ts on ts.songbookid = s.songbookid
join tracks t on t.trackid = ts.trackid
join albums alb on alb.albumid = t.albumid
join artistalbums aa on aa.albumid = alb.albumid
join artists art on art.artistid = aa.artistid 
where art.artistname = 'Taylor Swift'
