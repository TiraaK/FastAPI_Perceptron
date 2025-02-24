# FastAPI 실행을 위한 Python 3.9 베이스 이미지 사용
FROM python:3.9

# 작업 디렉토리 설정
WORKDIR /app

# 필요한 파일 복사
COPY ./requirements.txt /app/requirements.txt
COPY ./main.py /app/main.py

# 필요한 패키지 설치
RUN pip install --no-cache-dir --upgrade pip && \
    pip install -r requirements.txt

# FastAPI 서버 실행 (Uvicorn 사용)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
