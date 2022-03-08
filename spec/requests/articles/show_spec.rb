# Arrange
RSpec.describe 'GET/api.articles/:id' do
  let!(:article) { create(:article, title: 'Article 1') }
  let!(:another_article) { create(:article, title: 'Article 2') }

 # Act
  before do
    get "/api/articles/#{article.id}"
  end

  subject { response }

 # Asssert
  it { is_expected.to have_http_status 200 }

  
  it 'is expected to return 1 article' do
    binding.pry
    expect(response_json.size).to eq 1
  end

  it 'is expected to include article title' do
    expect(response_json['article']['title']).to eq 'Article 1'
  end

  it 'is expected to include the correct article title' do
    expect(response_json['article']['title']).not_to eq 'Article 2'
  end

end


