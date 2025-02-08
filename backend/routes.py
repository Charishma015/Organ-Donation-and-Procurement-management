from app import app

@app.route('/get_users')
def get_users():
    return "Retrieve users"
