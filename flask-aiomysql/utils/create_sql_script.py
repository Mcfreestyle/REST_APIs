"""This module supplies the `create_SQL_script` function
"""


def create_SQL_script(tables_dict={}, database_name=''):
    """Create a dummy file

    Args:
        tables_dict (dict) = Database data, for example:
            {
                users: ["(1, 'Michael', ...)", "(2, 'Destino', ...)"],
                todo_lists: ["(1, 'lista1', ...)", "(2, 'lista2', ...)"]
            }
    """
    filename = "./sql-scripts/feed_database.sql"

    idx = 0
    spacing = "\n\n\n"

    start = """--
-- Dumping dummy data for {0}
--
LOCK TABLES `{0}` WRITE;
INSERT INTO `{0}` VALUES
"""

    end = "UNLOCK TABLES;"

    with open(filename, mode="w", encoding="utf-8") as new_file:
        idx += new_file.write(spacing)
        idx += new_file.write("USE {};".format(database_name))

        for key, value in tables_dict.items():
            idx += new_file.write(spacing)
            idx += new_file.write(start.format(key))
            # loop over list (value)
            for row in value:
                row = (row + ';') if row == value[-1] else (row + ',')
                idx += new_file.write(row)
                idx += new_file.write("\n")

            idx += new_file.write(end)

    print("{} bytes written in file {}".format(idx, filename))
