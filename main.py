from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    print("hello")
    return {"message": "Hello, FastAPI on AWS Fargate!"}
