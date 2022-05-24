class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
      self << Freebie.create(:dev_id, "Jump Rope", 45)
      #My thought was, take the Company(self) and shovel in this new Freebie instance
    end

    def self.oldest_company
       Company.where(founding_year: 1995).pluck(:name, :founding_year)
    end
end
