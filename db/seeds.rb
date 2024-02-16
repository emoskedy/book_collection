# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Book.create!([
    {title: "The Hobbit", author: "J. R. R. Tolkien", price: "12", published_date: "03/11/1937"},
    {title: "The Lord of the Rings", author: "J. R. R. Tolkien", price: "15", published_date: "09/24/1935"},
    {title: "The Fellowship of the Ring", author: "J. R. R. Tolkien", price: "10", published_date: "02/15/1940"},
    {title: "Harry Potter", author: "J. R. R. Tolkien", price: "12", published_date: "06/04/1997"},
    {title: "The Hunger Games: The Ballads of Songbirds and Snakes", author: "J. R. R. Tolkien", price: "12", published_date: "08/03/2003"}
])