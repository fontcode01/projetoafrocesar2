require 'rails_helper'

RSpec.describe Movie, type: :model do
  context 'validate movie' do  # (almost) plain English
    
    it 'can not be blank' do   # Testa se o author é válido      
    movie = Movie.new(title: 'Título', year: 2012)
    expect(movie).to be_valid
    
    end

    it 'can not be blank' do   # Testa se o author é válido      
      movie = Movie.new(title: 'Título')
    expect(movie).not_to be_valid
    
    end

    it "is invalid if the same email already exists" do #é inválido caso já exista um e-mail igual
      movie = Movie.create( title: 'Título', year: 2012) 
      movie = Movie.new( title: 'Título', year: 2012)
      movie.valid? 
      expect(movie.errors[:title]).to include('has already been taken') 
     end 
  end
end
