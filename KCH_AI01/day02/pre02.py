import pytesseract
import cv2

class Card:
    def recog_card(self, img_array):
        # 크롭할 영역 7개 (좌표)
        xywhs = [
            {'x': 5, 'y': 73, 'w': 125, 'h': 48},
            {'x': 20, 'y': 125, 'w': 30, 'h': 20},
            {'x': 62, 'y': 125, 'w': 85, 'h': 20},
            {'x': 70, 'y': 157, 'w': 115, 'h': 22},
            {'x': 60, 'y': 181, 'w': 170, 'h': 21},
            {'x': 50, 'y': 204, 'w': 140, 'h': 19},
            {'x': 50, 'y': 226, 'w': 140, 'h': 21}
        ]
        
        texts = []
        for xywh in xywhs:
            x, y, w, h = xywh['x'], xywh['y'], xywh['w'], xywh['h']
            
            # 명함이미지에서 원하는 영역 크롭
            img_cut = img_array[y:y+h, x:x+w]
            
            # 크롭된 영역을 문자열로 인식
            text = pytesseract.image_to_string(img_cut, config='-l kor+eng --oem 3 --psm 11')
            text = text.replace(" ", "").replace("\n", "")
            texts.append(text)
            
        # 결과를 딕셔너리에 할당
        result = {
            'pabName': texts[0],
            'pabPosition': texts[1],
            'pabDptmnt': texts[2],
            'pabMobile': texts[3],
            'pabMail': texts[4],
            'pabCmptel': texts[5],
            'pabCmpfax': texts[6]
        }
        
        return result
