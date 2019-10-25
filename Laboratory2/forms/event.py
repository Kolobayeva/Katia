from wtforms import StringField, DateTimeField, SubmitField, validators,IntegerField
from flask_wtf import FlaskForm
from domain import models
from uuid import UUID
from domain.layout import data_types


class EventsViewModel(FlaskForm):
  
     event_name = StringField(" event_name: ", [
        validators.DataRequired("Please enter your  event_name.")

    ])

    event_date = DateField("age: ", [
        validators.DataRequired("Please enter your age.")

    ])
	
    submit = SubmitField("Save")
	
	def domain(self):
        return models.Events(
            event_name=self.event_name.data,
            event_date=self.event_date.data
          
        )