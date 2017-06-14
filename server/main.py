from bottle import route, run, template, static_file, view, post, get, redirect, request
import shutil
import os
import re
from connect import *
import requests
fornecedor = 'administrador1'
prod = 0;

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
    razaoSocial = str(request.forms.get('razaoSocial'))
    cnpj = str(request.forms.get('cnpj'))
    telefone = str(request.forms.get('fone'))
    email = str(request.forms.get('email'))
    tipo = str(request.forms.get('tipo'))
    mensagem = str(request.forms.get('msg'))

    sql = "INSERT INTO req_cadastro (razao_social, cnpj, telefone, email, tipo, mensagem) \
            VALUES ('{}', '{}', '{}', '{}', '{}', '{}')".format(
            razaoSocial, cnpj, telefone, email, tipo, mensagem)
    c.execute(sql)
    conn.commit()
    print("Requisição enviada com sucesso!")
    redirect("/")

@route('/dashboardFornecedor')
@view('dashfor2')
def posLogin():
    pass

@post('/atendimento/<parametro>')
def mensagemEnv(parametro):
	email = str(request.forms.get('email'))
	msg = str(request.forms.get('msg'))


	sql = "INSERT INTO mensagemEnviada (cnpj,mensagem,email) \
            VALUES ('{}', '{}', '{}')".format(
            fornecedor, email, msg)
	c.execute(sql)
	conn.commit()
	parametro = "/" + parametro
	redirect(parametro)

@get('/categoriasFornecedor')
@view('categoriasfor')
def categorias():
    sql = "SELECT id_cat, nome FROM categoria"
    c.execute(sql)
    tuplas = c.fetchall()
    return dict(categorias = tuplas)

@post('/categoriasFornecedor')
@view('categoriasfor')
def categorias():
    nome_categoria = request.forms.get('nome_categoria')

    sql = "INSERT INTO categoria (nome,fornecedor) VALUES ('{}','{}')".format(nome_categoria,fornecedor)
    c.execute(sql)
    conn.commit()
    redirect('/categoriasFornecedor')

@get('/deletecat/<id>')
def deleteCategoria(id):
    sql = "DELETE FROM categoria WHERE id_cat = {}".format(id)
    c.execute(sql)
    conn.commit()
    redirect('/categoriasFornecedor')

@post('/updatecat/<id>')
def updateCategoria(id):
    nome_categoria = request.forms.get('nome_categoria')
    sql = "UPDATE categoria SET nome = '{}' WHERE id_cat = {}".format(nome_categoria, id)
    c.execute(sql)
    conn.commit()
    redirect('/categoriasFornecedor')

@get("/produtosFornecedor")
@view('produtosfor')
def produtos():
    listaCategorias = getCategoriasByFornecedor()
    listaProdutos = getProdutosByFornecedor()
    return dict(produtos=listaProdutos, categorias=listaCategorias)

def getCategoriasByFornecedor():
    sql = "SELECT id_cat, nome from categoria WHERE fornecedor = '{}'".format(fornecedor)
    c.execute(sql)
    produtos = c.fetchall()
    return produtos

def getProdutosByFornecedor():
    sql = "SELECT idp, nome, marca, categoria from produto WHERE fornecedor = '{}'".format(fornecedor)
    c.execute(sql)
    produtos = c.fetchall()
    return produtos

@post('/cadastroproduto')
def cadastroproduto():
	nome = str(request.forms.get('nomeprod'))
	marca = str(request.forms.get('marcaprod'))
	categoria = str(request.forms.get('cateprod'))
	imagem = request.files.get('imagem')

	name, ext = os.path.splitext(imagem.filename)
	if ext not in ('.png', '.jpg', '.jpeg'):
		print("Tipo de arquivo nao permitido")
		redirect("/produtosFornecedor")

	save_path = "static/img"
	if not os.path.exists(save_path):
		os.makedirs(save_path)

	file_path = "{path}/{file}".format(path=save_path, file = imagem.filename)

	if os.path.exists(file_path):
		print("Arquivo ja existente")
		redirect("/produtosFornecedor")

	imagem.save(file_path)

	sql = "INSERT INTO produto (nome,marca,categoria,imagem,fornecedor) \
            VALUES ('{}', '{}', '{}', '{}', '{}')".format(
            nome, marca, categoria, imagem.filename, fornecedor)
	c.execute(sql)
	conn.commit()
	redirect("/produtosFornecedor")

@post('/delaltprod')
def delaltprod():
    global prod

    env = str(request.forms.get('env'))
    selprod = request.forms.get('selcad')
    if(selprod == None):
        redirect('/produtosFornecedor')
    else:
        selprod = int(selprod)

    if env == "Excluir":
        sql = "DELETE FROM produto WHERE idp = '{}'".format(selprod);
        c.execute(sql)
        conn.commit()
        redirect("/produtosFornecedor")
    if env == "Alterar":
        prod = selprod
        redirect('/atualizacaoproduto')

@get('/atualizacaoproduto')
@view('altprod')
def atualizacaoProduto():
    listaCategorias = getCategoriasByFornecedor()
    sql = "SELECT idp, nome, marca, categoria, imagem from produto where idp = '{}'".format(prod)
    c.execute(sql)
    tupla = c.fetchone()
    return dict(produto = tupla, categorias=listaCategorias)

@post("/atualizacaoprod")
@view('altprod')
def atualizacaoProd():
	nome = str(request.forms.get('nomeprod'))
	marca = str(request.forms.get('marcaprod'))
	categoria = str(request.forms.get('cateprod'))
	imagem = request.files.get('imagem')
	if imagem == None:
		sql = "UPDATE produto SET nome = '{}', marca = '{}', categoria = '{}' WHERE idp = '{}'".format(nome, marca, categoria, prod)
		c.execute(sql)
		conn.commit()
	if imagem != None:
		name, ext = os.path.splitext(imagem.filename)
		if ext not in ('.png', '.jpg', '.jpeg'):
			print("Tipo de arquivo nao permitido")
			redirect("/produtosFornecedor")
	
		save_path = "static/img"
		if not os.path.exists(save_path):
			os.makedirs(save_path)
	
		file_path = "{path}/{file}".format(path=save_path, file = imagem.filename)
	
		if os.path.exists(file_path):
			print("Arquivo ja existente")
			redirect("/produtosFornecedor")
		
		imagem.save(file_path)
		sql = "UPDATE produto SET nome = '{}', marca = '{}', categoria = '{}', imagem = '{}' WHERE idp = '{}'".format(nome, marca, categoria, imagem.filename, prod)
		c.execute(sql)
		conn.commit()
	redirect("/produtosFornecedor")

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
    redirect
    ("/atualizacaoFornecedor")

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
    pass

@get('/restrito/clientes')
@view('restrito/clientes')
def restrito_clientes():
    pass

@post('/restrito/clientes')
def cadastro_clientes():
    cnpj = str(request.forms.get('cnpj'))
    cnpj = re.sub('[.-]', '', cnpj)
    ie = str(request.forms.get('ie'))
    ie = re.sub('[.]', '', ie)
    razao_social = str(request.forms.get('razao_social'))
    nome_fantasia = str(request.forms.get('nome_fantasia'))
    rua = str(request.forms.get('rua'))
    numero = str(request.forms.get('numero'))
    bairro = str(request.forms.get('bairro'))
    cidade = str(request.forms.get('cidade'))
    uf = str(request.forms.get('uf'))
    cep = str(request.forms.get('cep'))
    cep = re.sub('[-]', '', cep)
    complemento = str(request.forms.get('complemento'))
    fone = str(request.forms.get('fone'))
    fone = re.sub('[ -()]', '', fone)
    email = str(request.forms.get('email'))
    senha = str(request.forms.get('senha'))
    tipo = str(request.forms.get('tipo'))

    sql = "INSERT INTO cliente VALUES \
            ('{}','{}','{}','{}','{}','{}','{}', \
            '{}','{}','{}','{}','{}','{}','{}','{}')".format(
                cnpj, ie, razao_social, nome_fantasia, rua, numero, bairro,
                cidade, uf, cep, complemento, fone, email, senha, tipo)
    print(sql)
    c.execute(sql)
    conn.commit()
    redirect('/restrito/clientes')

@get('/restrito/clientes/lista')
@view('restrito/clientes_cadastrados')
def cliente_novo():
    sql = "SELECT cnpj, ie, razao_social, nome_fantasia, email, fone FROM cliente"
    c.execute(sql)
    clientes = c.fetchall()
    return dict(clientes=clientes)

@get('/restrito/clientes/listaProd')
@view('restrito/produtos_cadastrados')
def produto_cad():
    sql = "SELECT produto.nome, produto.marca, produto.categoria, produto.imagem, cliente.cnpj, cliente.nome_fantasia FROM produto join cliente on produto.fornecedor = cliente.cnpj"
    c.execute(sql)
    produtos = c.fetchall()
    return dict(produtos=produtos)


@get('/restrito/requisicoes_cadastro')
@view('restrito/requisicoes')
def requisicoes_cadastro():
    sql = "SELECT * FROM req_cadastro"
    c.execute(sql)
    requisicoes = c.fetchall()
    return dict(requisicoes=requisicoes)

@get('/restrito/produtos')
@view('restrito/produtos')
def produtos_adicionados():
    pass

@get('/restrito/usuarios')
@view('restrito/usuarios')
def usuarios_app():
    pass

@get('/relatoriosFornecedor')
@view('relatoriofor')
def relatorios():
    pass

run(host='localhost', port=8080)
