from wtforms import StringField, DateTimeField, SubmitField, validators,IntegerField
from flask_wtf import FlaskForm
from domain import models
from uuid import UUID
from domain.layout import data_types


class UsersViewModel(FlaskForm):
    user_id = IntegerField("user_id: ", [
        validators.DataRequired("Please enter your user_id")

    ])

     user_name = StringField(" user_name: ", [
        validators.DataRequired("Please enter your  user_name.")

    ])

    age = IntegerField("age: ", [
        validators.DataRequired("Please enter your age.")

    ])
    eyes = StringField(" eyes: ", [
        validators.DataRequired("Please enter your  eyes.")

    ])
	hair = StringField("hair: ", [
        validators.DataRequired("Please enter your hair.")

    ])
	 height = IntegerField("height: ", [
        validators.DataRequired("Please enter your height.")

    ])
	
    submit = SubmitField("Save")
	
	def domain(self):
        return models.Users(
            user_id=self.user_id.data,
            user_name=self.user_name.data,
            age=self.age.data,
            eyes=self.eyes.data,
            hair=self.hair.data,
            height=self.height.data
        )