import express from "express"
import userRoutes from "./routes/users.js"
import cors from "cors"

const app = express()

app.use(express.json())
app.use(cors())

app.use((req, res, next) => {
    console.log(`${req.method} ${req.originalUrl} - ${new Date().toISOString()}`)
    next()
})

app.use("/api/", userRoutes)

app.listen(8802, () => {
    console.log('Servidor /api/ na porta 8802')
})
