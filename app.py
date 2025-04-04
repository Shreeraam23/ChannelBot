from fastapi import FastAPI

app = FastAPI()

@app.get("/") def read_root(): return {"message": "Hello, Koyeb!"}

if name == "main": import uvicorn uvicorn.run(app, host="0.0.0.0", port=8000)

