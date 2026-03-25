import express from "express"

const PORT = process.env.NODE_PORT

const app = express()

app.get("/api/users", (_req, res) => {
  return res.json(["User 1", "User 2", "User 3"])
})

app.listen(PORT, () => {
  console.log(`Server running at ${PORT}`)
})
