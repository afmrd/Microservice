from fastapi import FastAPI
import logging

logging.basicConfig(level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")

app=FastAPI()

@app.get("/student")

def read_root():
    try:
        response = {"student_status": "hired"}
        logging.info("Response generated successfully.")
        return response
    except Exception as e:
        logging.error(f"An error occurred: {e}")
