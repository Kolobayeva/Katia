from sqlalchemy import create_engine
from Katia.Laboratory2.connecting.credentials import *


class Database():
    connection = create_engine(f"postgresql+psycopg2://{username}:{password}@{hostname}:{port}/{database_name}")

    def __init__(self):
        self.connection = self.connection.connect()
        print("DB Instance created")


if __name__ == "__main__":
    db_con = Database()