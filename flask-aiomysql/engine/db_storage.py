import aiomysql
# import mysql.connector
from os import getenv
from engine.sql_queries import MySQLQuery

query = MySQLQuery()

class DBStorage:
  """
    Interacts with MySQL using mysql.connector
  """
  async def connect(self):
    """
      Init DB Engine
    """
    credentials = {
      'host': 'localhost',
      'user': 'root',
      'password': 'root',
      'db': getenv('DB'),
      'port': 3306
    }
    self.__conn = await aiomysql.connect(**credentials)
    self.__cur = await self.__conn.cursor(aiomysql.DictCursor)

  async def all(self, table):
    """
      Get all rows of specified table
      Args:
        table: table name
    """
    await self.connect()

    await self.__cur.execute(query.select_all(table))
    result = await self.__cur.fetchall()
    await self.close()

    return result

  def get(self, table, id):
    """
      Get row by table and id
      Args:
        table: table name
        id: row id(prim key)
    """
    self.__cur.execute(query.select_by_id(table), (id,))
    result = self.__cur.fetchone()

    return result

  def new(self, table, data):
    """
      Insert new row into table
      Args:
        table: table name
        data: dictionary with data of the row
    """
    self.__cur.execute(query.insert(table, data), data)
    self.__conn.commit()
    return self.get(table, self.__cur.lastrowid)

  def update(self, table, data, id):
    """
      Updates a row
      Args:
        table: table name
        data: dictionary with data of the row
        id: row id
    """
    self.__cur.execute(query.update(table, data), (id,))
    self.__conn.commit()
    return self.get(table, id)

  def delete(self, table, id):
    """
      Delete a row
      Args:
        table: table name
        id: row id
    """
    self.__cur.execute(query.delete(table), (id,))
    self.__conn.commit()
    return "Deleted record"

  async def close(self):
    await self.__cur.close()
    self.__conn.close()
