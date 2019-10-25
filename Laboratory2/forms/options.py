from wtforms import StringField, DateTimeField, SubmitField, validators,IntegerField
from flask_wtf import FlaskForm
from domain import models
from uuid import UUID
from domain.layout import data_types


class OptionsViewModel(FlaskForm):
  
      place = StringField("  place: ", [
        validators.DataRequired("Please enter your   place.")

    ])
	 season = StringField("  season: ", [
        validators.DataRequired("Please enter your  season.")

    ])

    temperature = IntegerField("age: ", [
        validators.DataRequired("Please enter your temperature.")

    ])
	
    submit = SubmitField("Save")
	
	def domain(self):
        return models.Options(
             place=self.place.data,
             season=self. season.data,
			 temperature=self. temperature.data
          
        )