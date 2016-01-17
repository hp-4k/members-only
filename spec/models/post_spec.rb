require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to validate_presence_of(:body) }
  it { is_expected.to validate_presence_of(:user) }
  
  describe "#author" do
    it "returns the name of the post author" do
      user = create(:user)
      post = user.posts.create(body: "test test")
      expect(post.author).to eq user.name
    end
  end
end
