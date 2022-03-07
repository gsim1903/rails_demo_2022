RSpec.describe 'GET /api/articles', type: :request do
  let!(:articles) { create_list(:article, 5) }

  before do
    get '/api/articles'
  end

  subject { response }

  it 'is expected to respond with status code 200' do
    expect(subject.status).to eq 200
  end

  it ' is expectd to return a collection of 5 articles' do
    expect(response_json['articles'].size).to eq 5
  end
end
