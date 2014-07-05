require 'spec_helper'

describe Video do
  context 'associations' do
    it { should belong_to(:category) }
  end

  context 'validations' do
    it { should have_valid(:title).when('Totoro') }
    it { should_not have_valid(:title).when(nil, '') }

    it { should have_valid(:description).when('Totoro dreams of sushi') }
    it { should_not have_valid(:description).when('', nil) }
  end

  describe 'search_by_title' do
    it "returns an empty array if there is no match" do
      elite_squad = Video.create(title: "Elite Squad", description: "Rio slum thriller")
      mosquito_squadron = Video.create(title: "Mosquito Squad", description: "RAF in WW2")

      expect(Video.search_by_title("Hey there")).to eq([]) 
    end

    it "returns an empty array if search is left blank" do
      expect(Video.search_by_title("")).to eq([])
    end

    it "returns an array of one video for an exact match" do
      elite_squad = Video.create(title: "Elite Squad", description: "Rio slum thriller")
      mosquito_squadron = Video.create(title: "Mosquito Squad", description: "RAF in WW2")

      expect(Video.search_by_title("Elite Squad")).to eq([elite_squad])
    end

    it "returns an array of one or more videos for partial matches" do
      elite_squad = Video.create(title: "Elite Squad", description: "Rio slum thriller")
      mosquito_squadron = Video.create(title: "Mosquito Squad", description: "RAF in WW2")

      expect(Video.search_by_title("quito")).to eq([mosquito_squadron])
    end

    it "returns an array of all matches ordered by created at" do
      elite_squad = Video.create(title: "Elite Squad", description: "Rio slum thriller")
      mosquito_squadron = Video.create(title: "Mosquito Squad", description: "RAF in WW2")

      expect(Video.search_by_title("squad")).to eq([mosquito_squadron, elite_squad])
    end
  end
end
