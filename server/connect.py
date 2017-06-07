import psycopg2

conn = psycopg2.connect("\
	dbname='merkado'\
	user='postgres'\
	host='localhost'\
	port ='5433'\
	password='postgres'\
");
c = conn.cursor()
