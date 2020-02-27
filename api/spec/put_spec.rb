

describe "put" do
    context "want to update a book" do
        before(:all) do
            original_book = build(:registered_book)
            @new_book = build(:update_book)
            @result_put = ApiBook.update(original_book.id, @new_book.to_hash)
            @result_get = ApiBook.find(original_book.id)

            puts @result_put.response.body
        end

        it { expect(@result_put.response.code).to eql "200" }
        it { puts expect(@result_get.parsed_response["Excerpt"]).to eql @new_book.excerpt }
    end
end