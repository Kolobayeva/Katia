INSERT INTO users  (user_id ,user_name, age, eyes, hair ,height )
VALUES (13, 'Katia', 20,'blue','brown',161);

INSERT INTO users  (user_id ,user_name, age, eyes, hair ,height )
VALUES (21, 'Dasha', 15,'green','brown',155);

INSERT INTO users  (user_id ,user_name, age, eyes, hair ,height )
VALUES (177, 'Mila', 24,'grey','red',174);


-- 
INSERT INTO events  (event_name ,event_date )
VALUES ('birthday', '2019-06-01');

INSERT INTO events  (event_name ,event_date )
VALUES ( 'concert','2019-08-06');

INSERT INTO events  (event_name ,event_date )
VALUES ( 'party','2019-09-10');


-- 
INSERT INTO options (place ,season,temperature )
VALUES ('cafe', 'summer',19);

INSERT INTO options  (place ,season,temperature )
VALUES ( 'hall','summer',27);

INSERT INTO options (place ,season,temperature )
VALUES ( 'club', 'autumn',15);

-- 
INSERT INTO clothes(style_name ,outwear, lowerwear ,shoes  )
VALUES ('romantic', 'dress','high heel shoels');

INSERT INTO clothes(style_name ,outwear, lowerwear ,shoes  )
VALUES ( 'gala', 't-shirt','jeans','sneakers');

INSERT INTO clothes(style_name ,outwear, lowerwear ,shoes  )
VALUES ( 'disco', 't-shirt','jeans','sneakers');

-- 
INSERT INTO user_event  (user_id ,event_name )
VALUES (13, 'birthday');

INSERT INTO user_event  (user_id ,event_name )
VALUES (21, 'concert');

INSERT INTO user_event (user_id ,event_name )
VALUES (177, 'club');
--

INSERT INTO event_options (event_name ,place )
VALUES ('birthday', 'cafe');

INSERT INTO event_options (event_name ,place )
VALUES ( 'concert','hall');

INSERT INTO event_options  (event_name ,place )
VALUES ( 'party','club');
---

INSERT INTO clothes_event (place,style_name )
VALUES ('cafe','romantic');

INSERT INTO clothes_event (place,style_name )
VALUES ( 'hall','gala');

INSERT INTO clothes_event  (place,style_name )
VALUES ( 'club','disco');
----
INSERT INTO clothes_user (user_id,style_name )
VALUES (13,'romantic');

INSERT INTO clothes_user(user_id,style_name )
VALUES ( 21,'gala');

INSERT INTO clothes_user  (user_id,style_name )
VALUES ( 177,'disco');