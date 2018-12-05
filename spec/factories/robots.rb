FactoryBot.define do
  factory :robot do
    name 'Bob'
    serial { SecureRandom.hex }
    friendly true

    inventor
  end
end

# creates and saves
# FactoryBot.create(:robot)
# FactoryBot.create(:robot, friendly: false)
# FactoryBot.create(:robot, friendly: false, name: 'Steve')

# creates a instance but not saves
# FactoryBot.build(:robot)

# hash of everything a robot has
# FactoryBot.attributes_for(:robot)

# creates a default factory
# FactoryBot.build_stubbed(:robot)

# FactoryBot.create(:robot) do |robot|
#   robot.parts(attributes_for(:parts))
# end

# Lazy Attributes
  # name { Robot.generare_name }

# Dependent Att
  # email { "#{first_name}@email.com"}

# Sequencing
  # sequence :email do |n|
  #   "inventor#{n}@email.com"
  # end

# Multiple robots
# build_list(:robot, 100)

# create_list(:robot, 100)

# callbacks
# before(:build)
# after(:build)
# before(:create)
# before(:stub)