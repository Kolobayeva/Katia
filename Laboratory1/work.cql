INSERT INTO keyspace1.user ((user_id,user_name,age,eyes,registr_date,parametrs) 
  VALUES ( 4880C220-E623-486F-BCA7-4E979A5523ED, {"firstname":'Katia',"surname":'Kolobaieva',"nickname":'KatiaK'},'20','blue',  toTimestamp(now()),{"hair":''brown',"height":'162'});
INSERT INTO keyspace1.user ((user_id,user_name,age,eyes,registr_date,parametrs) 
  VALUES ( 845C220-E233-486F-BCA6-4E979A5453EC, {"firstname":'Dasha',"surname":'Ivanova',"nickname":'IDasha'},'17','green', toTimestamp(now()),{"hair":''blond',"height":'170'});
INSERT INTO keyspace1.user ((user_id,user_name,age,eyes,registr_date,parametrs) 
  VALUES ( 5FECA1EB-09C3-47A0-920E-07182604F168, {"firstname":'Lili',"surname":'Orlova',"nickname":'LilO'},'23','grey', toTimestamp(now()),{"hair":''red',"height":'165'});
 
	SELECT json * from  keyspace1.user;


INSERT INTO keyspace1.event (event_id, event_data,temperature)	
	 VALUES (1EB57115-75F8-4315-9CC9-0FB274582FC3, {"event_name":'date', "event_season": 'summer'},'30');
INSERT INTO keyspace1.event (event_id, event_data,temperature)
	 VALUES (1EB582FC-75F8-4315-9CC9-0FB274557111, {"event_name":'new year', "event_season": 'winter'},'2');
INSERT INTO keyspace1.event (event_id, event_data,temperature) 
	VALUES (23E48255C-37EB-40AF-8EED-D49BF338A221, {"event_name":'intervier', "event_season": 'spring'},'14');

	SELECT json * from  keyspace1.event;


INSERT INTO keyspace1.options (options_id, options, seasonality)	
	 VALUES (61D59D93-850A-465A-91F0-F3C73B89555C, {"color":'red', "material": 'silk'}, {'weather':{'hot', 'sun'}});
INSERT INTO keyspace1.options (options_id, options, seasonality)	
	 VALUES (5FECA1EB-09C3-47A0-920E-07182604F168, {"color":'gold', "material": 'samit'},{'weather':{'coid', 'snown'}});
INSERT INTO keyspace1.options (options_id, options, seasonality)	
	 VALUES (5FECA1EB-09C3-47A0-920E-D49BF338A221, {"color":'black', "material":  'coton'},{'weather':{'rain', 'windy'}});
	 
  	SELECT json* from  keyspace1.options;

	
INSERT INTO keyspace1.clothers (style_id, style_name, outwear, lowearwear,shoes,count_of_version)	
	 VALUES (9EBD06CE-FE15-4D1F-AC36-0E58A1A0A1AE, {'romantic','gentle'}, 'dress','high heel shoels',2);
INSERT INTO keyspace1.clothers (style_id, style_name, outwear, lowearwear,shoes,count_of_version)	
	 VALUES (0FB27455-465A-4D1F-AC36-F3C73B89555C, {'gala','excellent'}, 'dress','high heel shoels',1);
INSERT INTO keyspace1.clothers (style_id, style_name, outwear, lowearwear,shoes,count_of_version)	
	 VALUES (76F33DA5-0796-4AC5-B8F6-F6654D685D77,{'official','restrain'}, 'coat','skirt','lofers',3);
	 
	SELECT json * from  keyspace1.clothers;

INSERT INTO keyspace1.user_event (user_id, user_name, event_id, event_data )	
	VALUES ( 4880C220-E623-486F-BCA7-4E979A5523ED, {"firstname":'Katia',"surname":'Kolobaieva',"nickname":'KatiaK'},1EB57115-75F8-4315-9CC9-0FB274582FC3, {"event_name":'date', "event_season": 'summer'};
INSERT INTO keyspace1.user_event (user_id, user_name, event_id, event_data )	
	VALUES ( 845C220-E233-486F-BCA6-4E979A5453EC, {"firstname":'Dasha',"surname":'Ivanova',"nickname":'IDasha'},1EB582FC-75F8-4315-9CC9-0FB274557111, {"event_name":'new year', "event_season": 'winter'};
INSERT INTO keyspace1.user_event (user_id, user_name, event_id, event_data )			
	VALUES ( 5FECA1EB-09C3-47A0-920E-07182604F168, {"firstname":'Lili',"surname":'Orlova',"nickname":'LilO'},23E48255C-37EB-40AF-8EED-D49BF338A221, {"event_name":'intervier', "event_season": 'spring'};
	 
	SELECT json * from  keyspace1.user_event;	

INSERT INTO keyspace1.event_clothers (event_id, options_id, temperature, seasonality)	
	 VALUES (1EB57115-75F8-4315-9CC9-0FB274582FC3,61D59D93-850A-465A-91F0-F3C73B89555C, '30', {'weather':{'hot', 'sun'}});
INSERT INTO keyspace1.event_clothers (event_id, temperature, seasonality)	
	 VALUES (1EB582FC-75F8-4315-9CC9-0FB274557111,5FECA1EB-09C3-47A0-920E-07182604F168, '2', {'weather':{'coid', 'snown'}});
INSERT INTO keyspace1.event_clothers (event_id, temperature, seasonality)	
	 VALUES (23E48255C-37EB-40AF-8EED-D49BF338A221,5FECA1EB-09C3-47A0-920E-D49BF338A221,'14', {'weather':{'rain', 'windy'}}));
	 
	SELECT json * from  keyspace1.event_clothers;


INSERT INTO keyspace1.clothers_options (style_id, options_id, options,style_name, count_of_version )	
	 VALUES (9EBD06CE-FE15-4D1F-AC36-0E58A1A0A1AE,61D59D93-850A-465A-91F0-F3C73B89555C, {"color":'red', "material": 'silk'}, {'romantic','gentle'},2;
INSERT INTO keyspace1.clothers_options (style_id, options_id, options,style_name, count_of_version )	
	 VALUES (0FB27455-465A-4D1F-AC36-F3C73B89555C,5FECA1EB-09C3-47A0-920E-07182604F168, {"color":'gold', "material": 'samit'}, {'gala','excellent'},1);
INSERT INTO keyspace1.clothers_options (style_id, options_id, options,style_name, count_of_version )		
	 VALUES (76F33DA5-0796-4AC5-B8F6-F6654D685D77,5FECA1EB-09C3-47A0-920E-D49BF338A221, {"color":'black', "material":  'coton'}, {'official','restrain'},3);
	 
	SELECT json * from  keyspace1.clothers_options;

INSERT INTO keyspace1.user_clothers_options (user_id, options, style_id,style_name, outwear, lowearwear,shoels )	
	 VALUES (4880C220-E623-486F-BCA7-4E979A5523ED,{"color":'red', "material": 'silk'},9EBD06CE-FE15-4D1F-AC36-0E58A1A0A1AE,  {'romantic','gentle'},dress','high heel shoels';
INSERT INTO keyspace1.user_clothers_options (user_id, options, style_id,style_name, outwear, lowearwear,shoels )	
	 VALUES (845C220-E233-486F-BCA6-4E979A5453EC,{"color":'gold', "material": 'samit'},0FB27455-465A-4D1F-AC36-F3C73B89555C, {'gala','excellent'},'dress','high heel shoels');
INSERT INTO keyspace1.user_clothers_options (user_id, options, style_id,style_name, outwear, lowearwear,shoels )		
	 VALUES (5FECA1EB-09C3-47A0-920E-07182604F168,{"color":'black', "material":  'coton'},76F33DA5-0796-4AC5-B8F6-F6654D685D77, {'official','restrain'},'coat','skirt','lofers');
	 
	SELECT json * from  keyspace1.user_clothers_options;	
	

------------------------------------------
UPDATE  keyspace1.user set age = '21' where user_id = 4880C220-E623-486F-BCA7-4E979A5523ED;
UPDATE  keyspace1.user set age = '18' where user_id = 845C220-E233-486F-BCA6-4E979A5453EC;
UPDATE  keyspace1.user set age = '24' where user_id = 5FECA1EB-09C3-47A0-920E-07182604F168;
	SELECT json * from keyspace1.user;


UPDATE keyspace1.event SET temperature ='35' WHERE event_id = 1EB57115-75F8-4315-9CC9-0FB274582FC3;
UPDATE keyspace1.event SET temperature[1] = '4'  WHERE event_id = 1EB582FC-75F8-4315-9CC9-0FB274557111; 
UPDATE keyspace1.event SET event_data = event_data+  [{"event_name":'date', "event_season": 'autumn'}] WHERE event_id = 23E48255C-37EB-40AF-8EED-D49BF338A221; 
	SELECT JSON * keyspace1.event ;
	  
UPDATE keyspace1.options SET options = []
  WHERE options_id = 61D59D93-850A-465A-91F0-F3C73B89555C;  
UPDATE keyspace1.options SET options =  [{"color":'grey', "material":  'coton'}[
  WHERE options_id = 5FECA1EB-09C3-47A0-920E-07182604F168;
UPDATE keyspace1.options SET  options = options+  [{"color":'red', "material":  'coton'}]
  WHERE options_id = 5FECA1EB-09C3-47A0-920E-D49BF338A221; 
SELECT JSON * FROM keyspace1.options; 

UPDATE keyspace1.clothers SET outwear ='dress' WHERE style_id = 9EBD06CE-FE15-4D1F-AC36-0E58A1A0A1AE;
UPDATE keyspace1.clothers SET lowearwear = 'skirt'  WHERE  style_id = 0FB27455-465A-4D1F-AC36-F3C73B89555C; 
UPDATE keyspace1.clothers SET style_name = style_name + {{'gala','excellent'}} WHERE 76F33DA5-0796-4AC5-B8F6-F6654D685D77;
SELECT JSON * FROM keyspace1.clothers; 
----------------------------------------
DELETE FROM keyspace1.user WHERE user_id = 4880C220-E623-486F-BCA7-4E979A5523ED;
DELETE FROM keyspace1.user WHERE user_id = 845C220-E233-486F-BCA6-4E979A5453EC;
DELETE FROM keyspace1.user WHERE user_id = 5FECA1EB-09C3-47A0-920E-07182604F168;
SELECT JSON * FROM keyspace1.user;

DELETE FROM keyspace1.event WHERE event_id = 1EB57115-75F8-4315-9CC9-0FB274582FC3;
DELETE FROM keyspace1.event WHERE event_id = 1EB582FC-75F8-4315-9CC9-0FB274557111;
DELETE FROM keyspace1.event WHERE event_id = 23E48255C-37EB-40AF-8EED-D49BF338A221;
SELECT JSON * FROM keyspace1.event;

DELETE FROM keyspace1.options WHERE options_id = 61D59D93-850A-465A-91F0-F3C73B89555C;
DELETE FROM keyspace1.options WHERE options_id = 5FECA1EB-09C3-47A0-920E-07182604F168;
DELETE FROM keyspace1.options WHERE options_id = 5FECA1EB-09C3-47A0-920E-D49BF338A221;
SELECT JSON * FROM keyspace1.options;

DELETE FROM keyspace1.clothers WHERE style_id = 9EBD06CE-FE15-4D1F-AC36-0E58A1A0A1AE;
DELETE FROM keyspace1.clothers WHERE style_id = 0FB27455-465A-4D1F-AC36-F3C73B89555C;
DELETE FROM keyspace1.clothers WHERE style_id = 76F33DA5-0796-4AC5-B8F6-F6654D685D77;
SELECT JSON * FROM keyspace1.clothers;

DELETE FROM keyspace1.user_event WHERE event_id = 1EB57115-75F8-4315-9CC9-0FB274582FC3;
DELETE FROM keyspace1.user_event WHERE event_id = 1EB582FC-75F8-4315-9CC9-0FB274557111;
DELETE FROM keyspace1.user_event WHERE event_id = 23E48255C-37EB-40AF-8EED-D49BF338A221;
SELECT JSON * FROM keyspace1.user_event;

DELETE FROM keyspace1.event_clothers WHERE event_id = 1EB57115-75F8-4315-9CC9-0FB274582FC3;
DELETE FROM keyspace1.event_clothers WHERE event_id = 1EB582FC-75F8-4315-9CC9-0FB274557111;
DELETE FROM keyspace1.event_clothers WHERE event_id = 23E48255C-37EB-40AF-8EED-D49BF338A221;
SELECT JSON * FROM keyspace1.event_clothers;

DELETE FROM keyspace1.clothers_options WHERE style_id = 9EBD06CE-FE15-4D1F-AC36-0E58A1A0A1AE;
DELETE FROM keyspace1.clothers_options WHERE style_id = 0FB27455-465A-4D1F-AC36-F3C73B89555C;
DELETE FROM keyspace1.clothers_options WHERE style_id = 76F33DA5-0796-4AC5-B8F6-F6654D685D77;
SELECT JSON * FROM keyspace1.clothers_options;

DELETE FROM keyspace1.user_clothers_options WHERE user_id = 4880C220-E623-486F-BCA7-4E979A5523ED;
DELETE FROM keyspace1.user_clothers_options WHERE user_id = 845C220-E233-486F-BCA6-4E979A5453EC;
DELETE FROM keyspace1.user_clothers_options WHERE user_id = 5FECA1EB-09C3-47A0-920E-07182604F168;
SELECT JSON * FROM keyspace1.user_clothers_options;
-------------------------------

	
SELECT user_id, user_name, event_data from keyspace1.user_event where event_id=4880C220-E623-486F-BCA7-4E979A5523ED;
SELECT temperature, seasonality from keyspace1.event_clothers where options_id=5FECA1EB-09C3-47A0-920E-07182604F168;
SELECT user_name, style,outwear,lowerwear,shoes from keyspace1.clothers_options where style_id=0FB27455-465A-4D1F-AC36-F3C73B89555C;
SELECT count_of_version from keyspace1.clothers_options where  options_id=5FECA1EB-09C3-47A0-920E-D49BF338A221; 



