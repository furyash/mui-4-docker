import psycopg2

# docker host 172.17.0.2
conn = psycopg2.connect(host="192.168.31.213", port=5432,
                        database="mui-4", user="postgres", password="postgres")

cur = conn.cursor()
cur.execute("""select * from submenu""")
query_results = cur.fetchall()
print(query_results)

cur.close()
conn.close()
