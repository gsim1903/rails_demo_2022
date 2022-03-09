RSpec.describe 'POST /api/articles' do
  before do
    post '/api/articles', params: {
      article: {
        title: 'News about coding',
        body: 'Lorem ipsum...'
      }
    }
    @article = Article.last 
  end

  subject { response }

  it { is_expected.to have_http_status 201 }

  it 'is expected to create an instance of an article with a title and body' do
    expect(@article).not_to be nil
    expect(@article.title).to eq "News about coding"
    expect(@article.body).to eq "Lorem ipsum..."
  end

end
