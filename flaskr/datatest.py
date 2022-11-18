import sqlite3

DATABASE = 'flaskr\\AmerikeDB.db'


def get_names():
    conn = sqlite3.connect(DATABASE)
    cursor = conn.cursor()

    query = "SELECT * FROM user"
    cur = cursor.execute(query)
    names = query_db(cur, one=True)

    if names is None:
        return '{"result": "Empty Result}'
    return names

def get_assets():
    conn = sqlite3.connect(DATABASE)
    cursor = conn.cursor()

    query = "SELECT * FROM Timetable"
    cur = cursor.execute((query))
    response = query_db(cur, one=True)

    if response is None:
        return '{"result": "Empty Result}'
    return response


def query_db(cursor, one=False):
    rv = cursor.fetchall()
    cursor.close()
    return (rv[0] if rv else None) if one else rv
