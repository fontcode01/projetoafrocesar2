require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'Validate comment' do  # (almost) plain English

  it 'if the comment is true' do   # Testa se o author é válido      
  comment = Comment.new
  expect(comment).to be_truthy
  
    end
  end
end
