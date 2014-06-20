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
end
