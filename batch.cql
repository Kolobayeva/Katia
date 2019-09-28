from uuid import uuid4
from datetime import datetime
from cassandra.cluster import Cluster
from cassandra.query import BatchStatement

cluster = Cluster(['127.0.0.1'])
session = cluster.connect('keyspace1')

insert_user_command = session.prepare(
    "INSERT INTO user (user_id, user_name, age, eyes, registr_date, parametr) VALUES (?, ?, ?, ?, ?, ?)")
insert_user_event_command = session.prepare(
    "INSERT INTO user_event (user_id, user_name,event_id, event_date ) VALUES (?, ?, ?, ?)")
insert_user_batch = BatchStatement()
user_id = uuid4()
event_date = {}
user_name ={}
registr_date = datetime.now()
parametrs = {}


insert_user_batch .add(insert_user_command,(user_id, user_name, age, eyes, registr_date, parametr)))
insert_user_batch .add(insert_user_event_command,(user_id, user_name,event_id, event_date ))

session.execute(insert_user_batch)