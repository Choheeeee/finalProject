from flask import Flask, jsonify, request
from flask_cors import CORS
from day02.pre02 import Card
from PIL import Image
import io
import numpy as np

app = Flask(__name__)
CORS(app)

@app.route('/ai_card', methods=['POST'])
def card():
    card = Card()
    uploaded_card = request.files.get("cardFile")
    # print("uploaded_card =========> ", uploaded_card)
    
    # 이미지를 PIL Image 객체로 변환
    img = Image.open(io.BytesIO(uploaded_card.read()))
    
    # PIL Image를 numpy 배열로 변환
    img_array = np.array(img)
    
    # 이미지 처리 함수에 전달
    res = card.recog_card(img_array)
    # print("res ================> ", res)
    
    return jsonify(res)

if __name__ == '__main__':
    app.run(host='192.168.141.13', port=5000)
    app.run(debug=True)
