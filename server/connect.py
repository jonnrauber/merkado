import psycopg2

conn = psycopg2.connect("\
	dbname='merkado'\
	user='postgres'\
	host='localhost'\
	password='postgres'\
");
c = conn.cursor()
