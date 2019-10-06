from cassandra.cluster import Cluster
cluster = Cluster()
session = cluster.connect()
session.execute("SELECT user_id, user_name, event_data from keyspace1.user_event where event_id=4880C220-E623-486F-BCA7-4E979A5523ED;")
session.execute("SELECT temperature, seasonality from keyspace1.event_clothers where options_id=5FECA1EB-09C3-47A0-920E-07182604F168;")
session.execute("SELECT user_name, style,outwear,lowerwear,shoes from keyspace1.clothers_options where style_id=0FB27455-465A-4D1F-AC36-F3C73B89555C;")
session.execute("SELECT count_of_version from keyspace1.clothers_options where  options_id=5FECA1EB-09C3-47A0-920E-D49BF338A221;")
