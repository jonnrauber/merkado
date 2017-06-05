from bottle import route, run, template, static_file, view, post, get, redirect, request
from connect import *
import requests

s = requests.Session()

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

    sql = "INSERT INTO req_cadastro (razao_social, cnpj, telefone, email, tipo, mensagem) \
            VALUES ('{}', '{}', '{}', '{}', '{}', '{}')".format(
            razaoSocial, cnpj, telefone, email, tipo, mensagem)
    c.execute(sql)
    conn.commit()
    print("Requisição enviada com sucesso!")
    redirect("/")

@route('/dashboardFornecedor')
@view('dashfor')
def posLogin():
    pass

@get("/produtosFornecedor")
@view('produtosfor')
def produtos():
    #listaProdutos = getProdutosByFornecedor()
    #return dict(produtos=listaProdutos)
    pass

def getProdutosByFornecedor(fornecedor):
    sql = "SELECT * FROM produto WHERE fornecedor = '{}'".format(fornecedor)
    c.execute(sql)
    produtos = c.fetchall()
    return produtos

@get("/atualizacaoFornecedor")
@view('atualizafor')
def atualizacaoFornecedor():
    #sql = "SELECT * FROM cliente WHERE cnpj = '{}'".format()
    #c.execute(sql)
    #tupla = c.fetchall()
    #return dict(cadastro = tupla)
    pass

@post("/atualizacaoFornecedor")
@view('atualizafor')
def atualizacaoFornecedor():
    pass

@route('/config')
@view('config')
def config():
    pass

@post('/login')
def login():
    cnpj = str(request.forms.get('cnpj'))
    senha = str(request.forms.get('senha'))

    sql = "select * from cliente c where c.cnpj = '{}' and c.senha = '{}'".format(cnpj, senha)
    c.execute(sql)
    tupla = c.fetchall()
    #verificação de login do usuario no banco de dados
    if(tupla):
        redirect('/dashboardFornecedor')
    else:
        redirect('/')

@get('/restrito')
@view('restrito/controle')
def restrito():
    sql = "SELECT * FROM req_cadastro"
    c.execute(sql)
    requisicoes = c.fetchall()
    return dict(requisicoes=requisicoes)

run(host='localhost', port=8080)
