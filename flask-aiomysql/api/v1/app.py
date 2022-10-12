import threading
from flask import Flask
from api.v1.views import app_views

print(f"In flask global level: {threading.current_thread().name}")

app = Flask(__name__)
app.config['JSONIFY_PRETTYPRINT_REGULAR'] = True
app.register_blueprint(app_views)

# @app.teardown_appcontext
# async def close_db(error):
#   await storage.close()

if __name__ == '__main__':
  app.run(port=5000, debug=True, threaded=True)