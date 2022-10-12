"""
  Queries to export and use
  in the engine
"""

class MySQLQuery:
  @staticmethod
  def select_all(table):
    """
      Query to select all rows
      from given table
    """
    return 'SELECT * FROM {}'.format(table)

  @staticmethod
  def select_by_id(table):
    """
      Query from table using id
    """
    return 'SELECT * FROM {} WHERE id=%s'.format(table)
  
  @staticmethod
  def insert(table, data = {}):
    """
      Insert new row into table
    """
    query = 'INSERT INTO {} '.format(table)
    
    keys = data.keys()
    columns = ', '.join(keys)
    
    query = '{}({})'.format(query, columns)

    place_holders = []
    for k in keys:
      place_holders.append('%({})s'.format(k))
    
    query = '{}VALUES ({})'.format(query, ', '.join(place_holders))
    return query

  @staticmethod
  def update(table, data={}):
    """
      Updates a row
    """
    query = 'UPDATE {} SET'.format(table)

    set_list = []
    for key, value in data.items():
      set_list.append("{}='{}'".format(key, value))

    query = '{} {} WHERE id=%s'.format(query, ', '.join(set_list))
    return query

  @staticmethod
  def delete(table):
    """
      Delete a row
    """
    return 'DELETE FROM {} WHERE id=%s'.format(table)
