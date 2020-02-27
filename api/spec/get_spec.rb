

describe "get" do
    context "when reading a book" do
        let(:book) { build(:registered_book) }
        let(:result) { ApiBook.find(book.id) }

        it { expect(result.response.code).to eql "200"}
        it { puts result.parsed_response }
    end
end