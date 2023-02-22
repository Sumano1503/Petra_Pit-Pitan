package models

type User struct {
	Id int64 `gorm:"primary_key;auto_increment" json:"id"`
	Name string `gorm:"size:255;not null;" json:"name"`
	Email string `gorm:"size:100;not null;" json:"email"`
	Password string `gorm:"size:100;not null;" json:"password"`
	Role string `gorm:"size:100;not null;" json:"role"`
	Status string `gorm:"size:100;not null;" json:"status"`
}