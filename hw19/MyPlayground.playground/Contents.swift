import UIKit

class Movie {
    var name: String
    var mood: String
    var year: Int
    
    init(name: String, mood: String, year: Int) {
        self.name = name
        self.mood = mood
        self.year = year
    }
}

class MoviesCollection {
    var collection = [Movie]()
    
    func addMovie(mov: Movie) {
        self.collection.append(mov)
        var sortedCollection = self.collection.sorted {$0.name < $1.name}
        for el in sortedCollection {
            print("\(el.name), \(el.mood), \(el.year)")
        }
        print("\n")
    }
    
    // в задании сказано ОТСОРТИРОВАТЬ, я не знаю, почему все повально фильтровать по настроению стали
    // сделал простую сортировку по алфавиту
    func sortMoviesByMood(){
        var sortedCollection = self.collection.sorted {$0.mood < $1.mood}
        for el in sortedCollection {
            print("\(el.name), \(el.mood), \(el.year)")
        }
    }
}

class Book {
    var name: String
    var genre: String
    var year: Int
    
    init(name: String, genre: String, year: Int) {
        self.name = name
        self.genre = genre
        self.year = year
    }
}

class BooksCollection {
    var collection = [Book]()
    
    func addBook(mov: Book) {
        self.collection.append(mov)
        var sortedCollection = self.collection.sorted {$0.name < $1.name}
        for el in sortedCollection {
            print("\(el.name), \(el.genre), \(el.year)")
        }
        print("\n")
    }
    
    func sortBooksByGenre() {
        var sortedCollection = self.collection.sorted {$0.genre < $1.genre}
        for el in sortedCollection {
            print("\(el.name), \(el.genre), \(el.year)")
        }
    }
}


var movies = MoviesCollection()

movies.addMovie(mov: Movie(name: "Interstellar", mood: "Science Fiction", year: 2014))
movies.addMovie(mov: Movie(name: "Gentleman", mood: "Action movie", year: 2019))
movies.addMovie(mov: Movie(name: "***** ****", mood: "Thriller", year: 1999))
movies.addMovie(mov: Movie(name: "Drive", mood: "Action movie", year: 2011))
movies.addMovie(mov: Movie(name: "Blade Runner 2049", mood: "Science Fiction", year: 2017))

movies.sortMoviesByMood()

var books = BooksCollection()

books.addBook(mov: Book(name: "Wolf Hall", genre: "Historical novel", year: 2009))
books.addBook(mov: Book(name: "Gilead", genre: "Novel", year: 2004))
books.addBook(mov: Book(name: "Secondhand Time", genre: "Biography", year: 2013))
books.addBook(mov: Book(name: "Never Let Me Go", genre: "Science Fiction", year: 2005))
books.addBook(mov: Book(name: "Austerlitz", genre: "Novel", year: 2001))

books.sortBooksByGenre()
