FactoryGirl.define do
  factory :player do
    
  end
  factory :team do
    name "MyString"
    player_names "MyString"
    score 1
    game nil
  end
  factory :game do
    
  end
end
