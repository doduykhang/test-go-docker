package main

import (
	"fmt"
	"net/http"

	"github.com/go-chi/chi/v5"
	"github.com/go-chi/chi/v5/middleware"
)

func main() {
	      r := chi.NewRouter()
	      r.Use(middleware.Logger)
	      r.Get("/", func(w http.ResponseWriter, r *http.Request) {
		            w.Write([]byte("welcome 5"))
	      })
        fmt.Println("Server running at port 443")
        http.ListenAndServe(":443", r)
}
