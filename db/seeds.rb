# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Post.destroy_all

filepath = Rails.root.join("db/seeds_datum/blogtest").class
# filepath = Pathname.new("/Users/Delta/Desktop/blogtest")

Dir.each_child( filepath  ) { |filename|
    contents = File.read(filepath.join(filename))
    Post.create(  title: "#{filename}", content: "#{contents}" )
}

# Post.create( title: "Hi", content: "Check one two, check one two")