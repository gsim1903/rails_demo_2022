RSpec.describe ' succesful POST /api/articles' do
  before do
    post '/api/articles', params: {
      article: {
        title: 'News about coding',
        body: 'Lorem ipsum...',
        image: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAzwAAAMuCAYAAADc6AZ'

      }
    }
    @article = Article.last
  end

  subject { response }

  it { is_expected.to have_http_status 201 }

  it 'is expected to create an instance of an article with a title and body' do
    expect(@article).not_to be nil
    expect(@article.title).to eq 'News about coding'
    expect(@article.body).to eq 'Lorem ipsum...'
  end
  
  it "is expected to attach an image to the article" do
    expect(@article.image.attached?).to eq true 
  end

end

RSpec.describe ' unsuccesful POST /api/articles' do
  before do
    post '/api/articles', params: {
      article: {
        title: '',
        body: 'Lorem ipsum...'
      }
    }
    @article = Article.last
  end



  # subject { response }

  # it { is_expected.to have_http_status 422 }

  #  it 'is expected to return an error stating the enty is not valid' do
  #   expect(@article.title).to eq ""
  #  expect(@article.body).to eq "Lorem ipsum..."
  # end
end
