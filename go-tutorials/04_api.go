package main

import ("fmt"
		"net/http")

// we define variables w and r from structs coming from http package
func index_handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "<h1>Homepage</h1>")
	fmt.Fprintf(w, "<p>This is a Go Server</p>")
}

func about_handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "<h1>About Page</h1>")
}

// main function that handles the server
func main() {
	// HandleFunc(endpoint, what to do)
	http.HandleFunc("/", index_handler)
	http.HandleFunc("/about/", about_handler)

	// ListenAndServe(port, server configuration)
	http.ListenAndServe(":8000", nil)
}