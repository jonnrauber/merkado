from bottle import route, run, template, static_file, view, post, get, redirect
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
    flag = 0
    razaoSocial = str(request.forms.get('razaoSocial'))
    if (razaoSocial == None or len(razaoSocial) == 0):
        print("Erro! Razão Social campo obrigatório.")
        flag = 1
    cnpj = str(request.forms.get('cnpj'))
    if (cnpj == None or len(cnpj) == 0):
        print("Erro! CNPJ campo obrigatório.")
        flag = 1
    telefone = str(request.forms.get('fone'))
    if (telefone == None or len(telefone) == 0):
        print("Erro! Telefone campo obrigatório.")
        flag = 1
    email = str(request.forms.get('email'))
    if (email == None or len(email) == 0):
        print("Erro! E-mail campo obrigatório.")
        flag = 1
    tipo = str(request.forms.get('tipo'))
    mensagem = str(request.forms.get('msg'))
    if (mensagem == None or len(mensagem) == 0):
        print("Erro! Mensagem campo obrigatório.")
        flag = 1
    if (flag == 1):
        redirect("/")

    sql = "INSERT INTO req_cadastro VALUES ('{}', '{}', '{}', '{}', '{}', '{}')"
    sql.format(razaoSocial, cnpj, telefone, email, tipo, mensagem)
    c.execute(sql)
    conn.commit()
    print("Requisição enviada com sucesso!")

@route('/dashboardFornecedor')
@view('dashfor')
def posLogin():
    pass

@get("/produtosFornecedor")
@view('produtosfor')
def produtos():
    pass

@get("/atualizacaoFornecedor")
@view('atualizafor')
def produtos():
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
