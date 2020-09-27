class PostValidator < ActiveModel::Validator
    def validate(record)
        if record.title != nil
            unless record.title.match?("Won't Believe") || record.title.match?("Secret") || record.title.match?("Top /\d/") || record.title.match?("Guess")
                record.errors[:post] << "Post is not clickbaity enough!"
            end
        end
    end
  end 