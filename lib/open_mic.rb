class OpenMic

  attr_reader

  attr_reader :location, :date

  def initialize(attributes)
    @location = attributes.fetch(:location)
    @date = attributes.fetch(:date)
  end
end

# the idea of a standalone hash makes sense to me, however
# I seem to get confused as soon as we start using it in testing and classes
# I googled initializing with a hash using the link below
# https://www.learnhowtoprogram.com/ruby-and-rails/routing-with-ruby/initializing-with-hashes
