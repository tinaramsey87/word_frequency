require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_frequency')

get('/') do
  erb(:form)
end

get('/wordtimes') do
  @word = params.fetch('word')
  @searchphrase = params.fetch('searchphrase')
  @results = @searchphrase.word_frequency(@word)
  erb(:wordtimes)
end
