

class ApiBook
    include HTTParty
    base_uri "http://fakerestapi.azurewebsites.net/api"
    headers "Content-Type" => "application/json"

    def self.save(book)
        post("/Books", body: book.to_json)
    end

    def self.find(book_id)
        get("/Books/#{book_id}")
    end

    def self.update(book_id, book)
        put("/Books/#{book_id}", body: book.to_json)
    end
end