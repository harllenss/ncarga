require_relative "models/book_model"

FactoryBot.define do
    
    factory :book, class: BookModel do
        title { "Livro Dom Casmurro"}
        description { "dojo@cargox.com.br" }
        pagecount { "256" }
        excerpt { "Sumário resumido" }
        publishdate { "2017-09-15T13:00:00.549505+00:00" }
    end

    factory :registered_book, class: BookModel do
        id { "1" }
        title { "Book 1" }
        description { "Lorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\n" }
        pagecount { "100" }
        excerpt { "Lorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\nLorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\nLorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.
                    \r\nLorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\nLorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\n" }
        publishdate { "2020-02-26T04:13:45.6747284+00:00" }
    end

    factory :update_book, class: BookModel do
        id { "1" }
        title { "Book 1" }
        description { "Lorem lorem lorem. Lorem lorem lorem. Lorem lorem lorem.\r\n" }
        pagecount { "100" }
        excerpt { "Edição Especial do Dia das Mães" }
        publishdate { "2020-02-26T04:13:45.6747284+00:00" }
    end

end