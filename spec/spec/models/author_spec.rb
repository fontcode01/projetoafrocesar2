require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'validate author' do  # (almost) plain English
    
    it 'can not be blank' do   # Testa se o author é válido      
    author = Author.new(name: 'nome', email: 'email@email', year: 2012)
    expect(author).to be_valid
    
   end

   it 'can not be blank' do   # Testa se o author é válido     
    author = Author.new(name: 'nome', email: 'email@email')
    expect(author).to_not be_valid
    end

    it "is invalid if the same email already exists" do #é inválido caso já exista um e-mail igual
      author = Author.create( name: 'Name1', email: 'email@email', year: 2012) 
      author = Author.new( name: 'Name2', email: 'email@email', year: 2012 )
      author.valid? 
      expect(author.errors[:email]).to include('has already been taken') 
     end 

  end
end
