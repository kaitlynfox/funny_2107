require './lib/open_mic'
require './lib/user'
require './lib/joke'

RSpec.describe OpenMic do

  it 'exists' do
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    expect(open_mic).to be_a(OpenMic)
  end

  it 'has a location' do
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    expect(open_mic.location).to eq("Comedy Works")
  end

  it 'has a date' do
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    expect(open_mic.date).to eq("11-20-18")
  end

  it 'has performers' do
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    expect(open_mic.performers).to eq([])
  end

  it 'can welcome performers' do
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    user_1 = User.new("Sal")
    user_2 = User.new("Ali")

    open_mic.welcome(user_1)
    expect(open_mic.performers).to eq([user_1])

    open_mic.welcome(user_2)
    expect(open_mic.performers).to eq([user_1, user_2])
  end

end
