from flask import Flask, render_template


app = Flask(__name__)
app.secret_key = 'dev'

@app.route('/', methods=['GET', 'POST'])
def index():
    return render_template('index.html')


if __name__ == '__main__':
    # port instructions for heroku
    # port = int(os.environ.get('PORT', 5000))
    app.run(debug=True, host='0.0.0.0') #, port=port)


