from wtforms import StringField, DateTimeField, SubmitField, validators,IntegerField
from flask_wtf import FlaskForm
from domain import models
from uuid import UUID
from domain.layout import data_types


class Event_optionsViewModel(FlaskForm):
  
     event_name = StringField(" event_name: ", [
        validators.DataRequired("Please enter your  event_name.")

    ])
	 place= StringField("place: ", [
        validators.DataRequired("Please enter your  place.")

    ])
		
    submit = SubmitField("Save")
	
	def domain(self):
        return models.  Event_options(
             event_name=self.event_name.data,
             place=self.place.data
			 
          
        )