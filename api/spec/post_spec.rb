

describe "post" do
    context "when new book" do
        let(:result) { ApiBook.save(build(:book).to_hash) }
        
        it { expect(result.response.code).to eql "200"}
        it { puts result.parsed_response }
    end
end