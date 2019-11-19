require 'rspec'
require_relative 'animal'

describe 'Test Animal Class' do

    context 'to test name' do
        it 'should get initialized name' do
            # create an animal class object and initialize it
            # pass some variables to the consstructor
            animal = Animal.new("Dino", 5)
            # get the name value
            nameValue = animal.getName
            # and check that it is correct
            expect(nameValue).to eql("Dino")
        end
    
        it 'should set name' do
            # create an animal class object and initialize it
            # pass some variables to the consstructor
            animal = Animal.new("Dino", 5)
            # get the name value
            nameValue = animal.setName("Max")
            # and check that it is correct

            expect(nameValue).to eql("Max")
            puts nameValue
        end
    end

    context 'to test age' do
        it 'should get initialized age' do
            # create an animal class object and initialize it
            # pass some variables to the constructor
            animal = Animal.new("Dino", 5)
            # get the name value
            ageValue = animal.getAge
            # and check that it is correct
            expect(ageValue).to eql(5)
        end
    
        it 'should set age' do
            # create an animal class object and initialize it
            # pass some variables to the consstructor
            animal = Animal.new("Dino", 5)
            # get the name value
            ageValue = animal.setAge(10)
            # and check that it is correct
            expect(ageValue).to eql(10)
        end
    end
end