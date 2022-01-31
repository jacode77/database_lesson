class Author < ApplicationRecord
    has_many :books

    def full_name # Best to keep business logic in the model
        return self.first_name + " " + self.last_name
    end

    def age #Calculation of age is done in model to keep the logic where it should remain
        ((Time.zone.now - self.date_of_birth.to_time)/ 1.years.seconds).floor
    end
end
