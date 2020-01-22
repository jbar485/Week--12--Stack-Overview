FactoryBot.define do
  factory(:question) do
    author {'Judah Barton'}
    question {'How old am I?'}
  end

  factory(:response) do
    author {'Ali Amirhamzeh'}
    answer {'You are 20 years old, chich!'}
  end
end
