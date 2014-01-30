require 'ripper'

test = <<-EOD
describe Bird do
  context 'setup' do
    it 'should have a valid factory' do
      FactoryGirl.create(:bird).should be_valid
    end

    it 'should not be valid without name' do
      bird = FactoryGirl.build(:bird)
      bird.name = nil
      bird.should_not be_valid
    end
  end

  describe '#see' do
    it 'should create a new sighting' do
      bird = FactoryGirl.create(:bird)
      expect { bird.see }.to change(Sighting, :count).by(1)
    end
  end
end
EOD

# use Ripper to get sexps
# how can we find before(:all)?
# how can we see if they have a matching after(:all) on the same level