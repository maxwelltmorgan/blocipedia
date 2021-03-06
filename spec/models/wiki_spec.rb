require 'rails_helper'

RSpec.describe Wiki, type: :model do
  let(:user) { User.create!(email: "user@example.com", password: "password") }
  let(:wiki) { Wiki.create!(title: "New Wiki Title", body: "New Wiki Body", user: user) }

  it { is_expected.to belongs_to(:user) }

  describe "attributes" do
    it "has title body and user attributes" do
      expect(wiki).to have_attributes(title: "New Wiki Title", body: "New Wiki Body", user: user)
    end
  end

end
