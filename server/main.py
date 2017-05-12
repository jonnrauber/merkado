from bottle import route, run, template, static_file, view

@route('/static/<path:path>')
def server_static(path):
    return static_file(path, root='static')

@route('/')
@view('index')
def start():
    pass

@route('/dashboard')
@view('dashboard')
def posLogin():
    pass


@route('/config')
@view('config')
def config():
    pass


run(host='localhost', port=8080)
