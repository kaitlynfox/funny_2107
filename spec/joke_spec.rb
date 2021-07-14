require "./lib/joke"

RSpec.describe Joke do
  it 'exists' do
    joke = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")

    expect(joke).to be_a(Joke)
  end

  xit 'has an id' do
    joke = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")

    expect(joke.id).to be_a(22)
  end

  xit 'has a setup' do
    joke = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")

    expect(joke.setup).to be_a("Why did the strawberry cross the road?")
  end


end
