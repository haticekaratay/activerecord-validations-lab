class TitleValidator < ActiveModel::Validator
    CLICKBAIT_PATTERNS = ["Won't Believe", "Secret", "Top", "Guess"]
    def  validate(record)
        if record.title && !CLICKBAIT_PATTERNS.find {|el| record.title.include?(el)}
            record.errors[:title] << "Title isn't sufficently clickbait-y"
       # binding.pry
       end
    end
end