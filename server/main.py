from bottle import route, run, template, static_file, view

@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='view/static')

@route('/')
@view('view/index')
def start():
    pass





run(host='localhost', port=8080)
