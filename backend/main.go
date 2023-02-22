package main

import (
	"github.com/Sumano1503/Petra_Pit-Pitan/backend/models"
	"github.com/gin-gonic/gin"
)

func main(){
	r := gin.Default();

	r.GET("/api/users", usercontroller.Index)
	r.GET("/api/users/:id", usercontroller.Index)
	r.POST("/api/users", usercontroller.Create)
	r.PUT("/api/users/:id", usercontroller.Update)
	r.DELETE("/api/users", usercontroller.Delete)

	r.Run()
}