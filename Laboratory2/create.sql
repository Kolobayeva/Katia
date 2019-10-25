CREATE TABLE users (

    user_id INTEGER NOT NULL PRIMARY KEY ,
    user_name VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL,
	eyes VARCHAR(50) NOT NULL,
    hair VARCHAR(100) NOT NULL,
    height INTEGER NOT NULL
);

CREATE TABLE user_event (

    user_id INTEGER NOT NULL ,
    event_name VARCHAR(50) NOT NULL ,
	
	PRIMARY KEY (user_id, event_name ),
  CONSTRAINT user_event_event_name_fkey FOREIGN KEY (event_name )
      REFERENCES events (event_name) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT user_event_user_id_fkey FOREIGN KEY (user_id)
      REFERENCES users (user_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);
	 
CREATE TABLE events(

    event_name VARCHAR(50) NOT NULL PRIMARY KEY ,
    event_date TIMESTAMP

);
CREATE TABLE event_options (

    place VARCHAR(100) NOT NULL ,
    event_name VARCHAR(50) NOT NULL ,
	PRIMARY KEY (place , event_name),
  CONSTRAINT event_options_place_fkey FOREIGN KEY (place )
      REFERENCES options (place) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT event_options_event_name _fkey FOREIGN KEY (event_name )
      REFERENCES events (event_name ) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);
 
CREATE TABLE options (

   place VARCHAR(100) NOT NULL PRIMARY KEY,
   season VARCHAR(100) NOT NULL
   temperature INTEGER
);
CREATE TABLE clothes_event (

    place VARCHAR(100) NOT NULL ,
    style_name VARCHAR(100) NOT NULL ,
	PRIMARY KEY (place , style_name),
	CONSTRAINT clothes_event_place_fkey FOREIGN KEY (place )
      REFERENCES options (place) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clothes_event_style_name_fkey FOREIGN KEY (style_name)
      REFERENCES clothes (style_name ) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);
CREATE TABLE clothes (

    style_name VARCHAR(100) NOT NULL PRIMARY KEY,
    outwear varchar(50) NOT NULL,
	lowerwear varchar(50) NOT NULL,
	shoes varchar(50) NOT NULL
);


CREATE TABLE clothes_user (

    user_id INTEGER NOT NULL ,
    style_name VARCHAR(100) NOT NULL ,
	PRIMARY KEY  (user_id , style_name),
  CONSTRAINT clothes_user_user_id_fkey FOREIGN KEY (user_id)
	REFERENCES users (user_id) MATCH SIMPLE
	ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT clothes_user_style_name_fkey FOREIGN KEY (style_name)
      REFERENCES clothes (style_name ) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION

);