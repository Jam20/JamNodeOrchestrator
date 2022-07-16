import express from "express";

const app = express()
const port = 3000

function defaultResponse(request, response){
    response.status(404).send("404 Endpoint not found")
}

app.get('/', defaultResponse)

app.listen(port, () => {
    console.log(`Core Service now listening on port: ${port}`)
})