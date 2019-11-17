require 'net/http'

urlArray = ['http://api.themoviedb.org/3/movie/popular?api_key=1f6edcf7cdec1a1942d5d87e84a1ab89','http://api.themoviedb.org/3/movie/top_rated?api_key=1f6edcf7cdec1a1942d5d87e84a1ab89']

def parse_api_json (url)
	data = nil
	uri = URI(url)
	response = Net::HTTP.get(uri)
	data = response.scan(Regexp.new('\\"title\\":\\"(.*?)\\"')).flatten
	puts "Total Movies = #{data.size}"
	return data
end
urlArray.each do |url|
	puts "Movit List for URL: #{url}"
	puts parse_api_json(url)	
end