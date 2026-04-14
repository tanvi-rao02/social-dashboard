import sqlite3

# Connect to database
conn = sqlite3.connect("social_dashboard.db")

# Run schema (create tables)
with open('database/schema.sql') as f:
    conn.executescript(f.read())

print("Tables created!")

# Insert sample data
with open('database/sample_data.sql') as f:
    conn.executescript(f.read())

conn.commit()

print("Sample data inserted!")

# Close connection
conn.close()