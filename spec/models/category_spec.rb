require 'spec_helper'

describe Category do
  it "it can be saved" do
    category = Category.new(name: "Thriller")
    category.save
    expect(Category.first).to eq(category)
  end

  it "has many videos" do
    action = Category.create(name: "Action")
    bourne1 = Video.create(title: "Bourne1", description: "Run fight run")
    bourne2 = Video.create(title: "Bourne2", description: "Run run fight")
    expect(action.videos).to eq(bourne1, bourne2)
  end
end
