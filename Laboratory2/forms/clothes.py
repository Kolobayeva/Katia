from wtforms import StringField, DateTimeField, SubmitField, validators,IntegerField
from flask_wtf import FlaskForm
from domain import models
from uuid import UUID
from domain.layout import data_types


class ClothesViewModel(FlaskForm):
  
     style_name = StringField(" style_name: ", [
        validators.DataRequired("Please enter your   style_name.")

    ])
	 outwear= StringField("outwear: ", [
        validators.DataRequired("Please enter your  outwear.")

    ])

    lowerwear= StringField("lowerwear: ", [
        validators.DataRequired("Please enter your lowerwear.")

    ])
	
	shoes= StringField("shoes: ", [
        validators.DataRequired("Please enter your shoes.")

    ])
	
	
    submit = SubmitField("Save")
	
	def domain(self):
        return models.Clothes(
             style_name=self.style_name.data,
             outwear=self.outwear.data,
			 lowerwear=self.lowerwear.data,
			 shoes=self.shoes.data
          
        )
