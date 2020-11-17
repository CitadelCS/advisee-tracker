class Student < ActiveRecord::Base
  def self.all_years
    %w(2020 2021 2022 2023 2024)
  end

end