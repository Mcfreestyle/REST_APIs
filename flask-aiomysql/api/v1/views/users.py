# import asyncio
import threading
from api.v1.views import app_views
from flask import make_response, jsonify
from engine.db_storage import DBStorage

@app_views.route('/users', methods=['GET'])
async def get_users():
  print(f"Inside flask function: {threading.current_thread().name}")
  # asyncio.set_event_loop(asyncio.new_event_loop())
  # loop = asyncio.get_event_loop()
  # users = loop.run_until_complete(storage.all('users', loop))

  storage = DBStorage()
  users = await storage.all('users')
  return make_response(jsonify(users), 200)
