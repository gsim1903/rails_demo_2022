RSpec.describe Api::PingsController do
    it 'is expected to return a pong' do
    get '/api/pings'
    expect(response_json['message']).to eq 'pong'
    end
end

