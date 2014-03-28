require 'spec_helper'

describe Person do
  it { should validate_presence_of :name }
  it { should validate_presence_of :gender }

  it { should have_many :relationships }

  it 'should be initialized with a name and gender' do
    earl = Person.create(:name => 'Earl', :gender => 'male')
    Person.all.should eq [earl]
  end

end






  # context '#spouse' do
  #   it 'returns the person with their spouse_id' do
  #     earl = Person.create(:name => 'Earl')
  #     steve = Person.create(:name => 'Steve')
  #     steve.update(:spouse_id => earl.id)
  #     steve.spouse.should eq earl
  #   end

  #   it "is nil if they aren't married" do
  #     earl = Person.create(:name => 'Earl')
  #     earl.spouse.should be_nil
  #   end
  # end

  # it "updates the spouse's id when it's spouse_id is changed" do
  #   earl = Person.create(:name => 'Earl')
  #   steve = Person.create(:name => 'Steve')
  #   steve.update(:spouse_id => earl.id)
  #   earl.reload
  #   earl.spouse_id.should eq steve.id
  # end
