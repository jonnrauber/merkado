from bottle import route, run, template, static_file, view, post, redirect, request
from connect import *

@route('/static/<path:path>')
def server_static(path):
    return static_file(path, root='static')

@route('/')
@view('index')
def start():
    pass

@post('/register')
def register():
    pass

@route('/dashboardFornecedor')
@view('dashfor')
def posLogin():
    pass

@route('/config')
@view('config')
def config():
    pass

@post('/login')
def login():
    cnpj = str(request.forms.get('cnpj'))
    senha = str(request.forms.get('senha'))

    sql = "select * from cliente c where c.cnpj = '%s' and c.senha = '%s'" %\
            (cnpj, senha)
    c.execute(sql)
    c.fetchOne()
    #verificação de login do usuario no banco de dados
    if(c):
        redirect('/dashboardFornecedor')
    else:
        redirect('/home')

run(host='localhost', port=8080)
