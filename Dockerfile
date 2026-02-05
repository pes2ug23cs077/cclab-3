FROM python:3.10-slim

WORKDIR /app

COPY app.py ./

COPY spam_classifier_model.pkl ./
COPY tfidf_vectorizer.pkl ./

COPY templates ./templates

RUN pip install --no-cache-dir flask scikit-learn joblib

EXPOSE 5000

CMD ["python", "app.py"]