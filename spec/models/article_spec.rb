RSpec.describe Article, type: :model do
  describe 'Database' do
    it { is_expected.to have_db_column(:title).of_type(:string) }
    it { is_expected.to have_db_column(:body).of_type(:text) }
  end

  describe 'Factory' do
    it 'is expected to be valid' do
      expect(create(:article)).to be_valid
    end
  end

  describe 'attachment' do
    it 'is expected to be valid' do
      subject.image.attach(
        io: File.open(fixture_path + '/GS.png'),
        filename: 'attachment.png',
        content_type: 'image/png'
      )
      expect(subject.image).to be_attached 
    end
  end
end
