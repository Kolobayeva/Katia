CREATE KEYSPACE keyspace1
WITH replication = {
	'class' : 'SimpleStrategy',
	'replication_factor' : 1
};

CREATE TYPE IF NOT EXISTS keyspace1.user_name_type(
	firstname text,
	surname text,
	nickname text
);


CREATE TYPE IF NOT EXISTS keyspace1.parametr_type(
	hair text,
	height int
);


CREATE TYPE IF NOT EXISTS keyspace1.event_type(
	event_name text,
	event_season text
);

CREATE TYPE IF NOT EXISTS keyspace1.options_type(
	color text,
	material text,
);


CREATE TABLE IF NOT EXISTS keyspace1.user(
	user_id UUID,
	user_name frozen<user_name_type> ,
	age int,
	eyes text STATIC,
	registr_date date,
	parametrs frozen<parametr_type>,
	
	
	PRIMARY KEY (user_id,registr_date)
);

CREATE TABLE IF NOT EXISTS keyspace1.event(
	event_id UUID,
	
	event_data frozen<event_type>,
	
    temperature int,

	PRIMARY KEY (event_id)
);

CREATE TABLE IF NOT EXISTS keyspace1.options(
	options_id UUID,
	
	options frozen<options_type> ,
	
	seasonality LIST<text>, 
	
	PRIMARY KEY (options_id)
);
 
CREATE TABLE keyspace1 IF NOT EXISTS keyspace1.clothers(
	style_id UUID,
	
	style_name map<text, frozen<set<text>>>,	

	outwear text,

	lowerwear text,

	shoes text,
	 
	count_of_version int,

	PRIMARY KEY (style_id)
);



CREATE TABLE IF NOT EXISTS keyspace1.user_event (
	user_id UUID,
	user_name frozen<user_name_type>,
	event_id UUID,
	event_data frozen<event_type>,
	PRIMARY KEY (user_id, event_id)
);

CREATE TABLE IF NOT EXISTS keyspace1.event_clothers (
	event_id UUID,
	temperature int,
	seasonality map<text, frozen<set<text>>>,
	options_id UUID,
	PRIMARY KEY (event_id, options_id)
);

CREATE TABLE IF NOT EXISTS keyspace1.clothers_options(
	style_id int,
	options_id int,
	options frozen<options_type> ,
	style_name SET<text>,
    count_of_version int,
	PRIMARY KEY (style_id, options_id )
);

CREATE TABLEIF NOT EXISTS keyspace1.user_clothers_options (
	user_id UUID,
	options frozen<options_type>,
	style_id UUID,
	style_name SET<text>,
	outwear text,
	lowerwear text,
	shoes text,
	PRIMARY KEY (user_id, style_id)
);
