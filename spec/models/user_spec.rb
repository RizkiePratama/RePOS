require 'rails_helper'

RSpec.describe User, type: :model do
  PASSWORD = "SomeOrdinaryPassword"

  it "is valid with all required Attribute" do
    user = FactoryBot.create(:user)
    expect(user).to be_valid
  end

  it "is invalid when don't have password" do
    expect{ User.create!(email: "jhon.doe@example.com", first_name: "Jhon", last_name: "Doe") }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "is invalid when don't have first_name" do
    expect{ User.create!(email: "jhon.doe@example.com", last_name: "Doe", password: PASSWORD) }.to raise_error(ActiveRecord::NotNullViolation)
  end

  it "is valid when don't have last_name" do
    expect{ User.create!(email: "jhon.doe@example.com", first_name: "Jhon", password: PASSWORD) }.not_to raise_error(ActiveRecord::NotNullViolation)
  end
end
