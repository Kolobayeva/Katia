from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.orm import backref
from Katia.Laboratory2.forms.Users import Users
from Katia.Laboratory2.forms.Event import Event
from Katia.Laboratory2.forms.Options import Options


db = SQLAlchemy()
class ormUsers(db.Model):
    __tablename__ = 'users'
    user_id = db.Column("user_id ",db.Integer,  primary_key=True)
    user_name =  db.Column(" user_name", db.String, nullable=False)
    age =  db.Column("age", db.Integer, nullable=False)
    eyes=  db.Column("eyes", db.String, nullable=False)
	hair=db. db.Column("hair", db.String, nullable=False)
	heigth= db.Column("heigth", db.Integer, nullable=False)
	 def filled_form(self):
        return  Users(user_name=self.user_name)

    def map_to_form(self, form):
        self.user_name = form.user_name.data

class Event(db.Model:
    __tablename__ = 'event_table'

    event_name = db.Column( "event_name", db.String, primary_key=True)
    event_date = db.Column("event_date", db.Date, nullable=False)
	
	userIdFk = db.Column("userIdFk", db.Integer, db.ForeignKey("users_table.user_id"))
   User = db.relationship("Users", backref=backref('children', cascade='all,delete'), passive_deletes=True)

def filled_form(self):
         return Event(
		 event_date=self.event_date
           User=self.userIdFk)

    def map_to_form(self, form):
       self.event_date = form.event_date.data
        self.userIdFk = form.User.data

class Options(db.Model):
    __tablename__ = 'options_table'

    place = db.Column(" place", db.String, primary_key=True)
    season = db.Column("season", db.String, nullable=False)
	temperature = db.Column("temperature", db.String, nullable=False)

       def filled_form(self):
        return Options(
            season=self.season,
            Event=self.EventIdFk)

    def map_to_form(self, form):
        self.season = form.season.data
        self.EventIdFk = form.Event.data

