require 'spec_helper'

describe Video do
  it "should save when given proper attributes" do
    prev_count = Video.count

    Video.create(
      category: Category.find_by_name("Animation"),
      title: 'Spirited Away',
      description: 'Good movie',
      small_cover_url: "/tmp/spirited_away.jpg",
      large_cover_url: "/tmp/spirited_away_large.jpg"
      ) 

    expect(Video.count).to eq(prev_count + 1)
  end

  it "belongs to a category" do
    animation = Category.create(name: 'Animation')
    spirited_away = Video.create(title: 'Spirited Away', description: 'Nice movie',
      category: animation)
    expect(spirited_away.category).to eq(animation)
  end
end
