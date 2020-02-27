
class BookModel
    attr_accessor :id, :title, :description, :pagecount, :excerpt, :publishdate

    def to_hash
        {
            title: @title,
            description: @description,
            pagecount: @pagecount,
            excerpt: @excerpt,
            publishdate: @publishdate,
        }
    end

end