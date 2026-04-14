from flask import Flask, render_template, jsonify
import sqlite3, pandas as pd

app = Flask(__name__, template_folder='dashboard')

def query(sql):
    conn = sqlite3.connect('database/social.db')
    df = pd.read_sql_query(sql, conn)
    conn.close()
    return df.to_dict(orient='records')

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/top-posts')
def top_posts():
    data = query("""SELECT p.title, e.likes, e.shares
        FROM posts p JOIN engagement e ON p.post_id=e.post_id
        ORDER BY e.likes DESC LIMIT 5""")
    return jsonify(data)

if __name__ == '__main__':
    app.run(debug=True)
    