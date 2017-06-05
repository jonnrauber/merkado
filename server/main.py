from bottle import route, run, template, static_file, view, post, get, redirect

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
    #verificação de login do usuario no banco de dados
    redirect('/dashboardFornecedor')

run(host='localhost', port=8080)
