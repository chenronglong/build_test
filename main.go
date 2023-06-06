package main

import (
	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	r.GET("ping", Ponghandler)
	r.Run(":9999")
}

func Ponghandler(c *gin.Context) {
	c.JSON(200, "pong")
}
