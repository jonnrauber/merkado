from bottle import route, run, template, static_file, view, post, get, redirect, request
from connect import *
import requests
fornecedor = 'administrador1'

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
    listaProdutos = getProdutosByFornecedor()
    return dict(produtos=listaProdutos)

def getProdutosByFornecedor():
    sql = "SELECT idp ,nome, marca,categoria from produto WHERE fornecedor = '{}'".format(fornecedor)
    c.execute(sql)
    produtos = c.fetchall()
    print("oi")
    print(produtos[0][0])
    return dict(produtos=produtos)

@get("/atualizacaoFornecedor")
@view('atualizafor')
def atualizacaoFornecedor():
    cnpj = "administrador1" #provisório!
    sql = "SELECT rua, numero, bairro, cidade, uf, cep, complemento, email, fone FROM cliente WHERE cnpj = '{}'".format(cnpj)
    c.execute(sql)
    tupla = c.fetchone()
    return dict(fornecedor = tupla)

@post("/atualizacaoFornecedor")
@view('atualizafor')
def atualizacaoFornecedor():
    cnpj = "administrador1" #provisório!
    rua = str(request.forms.get('rua'))
    numero = str(request.forms.get('numero'))
    bairro = str(request.forms.get('bairro'))
    cidade = str(request.forms.get('cidade'))
    uf = str(request.forms.get('uf'))
    cep = str(request.forms.get('cep'))
    complemento = str(request.forms.get('complemento'))
    if (complemento == 'None'):
        complemento = ""
    email = str(request.forms.get('email'))
    telefone = str(request.forms.get('fone'))

    sql = "UPDATE cliente SET rua = '{}', numero = '{}', bairro = '{}', \
            cidade = '{}', uf = '{}', cep = '{}', complemento = '{}', \
            email = '{}', fone = '{}' WHERE cnpj = '{}'".format(
                rua, numero, bairro, cidade, uf, cep, complemento, email,
                telefone, cnpj
            )
    c.execute(sql)
    conn.commit()
    redirect("/atualizacaoFornecedor")

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
    sql = "SELECT * FROM cliente"
    c.execute(sql)
    clientes = c.fetchall()
    return dict(requisicoes=requisicoes, clientes=clientes)

run(host='localhost', port=8080)
