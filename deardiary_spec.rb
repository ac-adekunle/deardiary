require_relative 'diary'

describe Diary do 
  let(:diary) { Diary.new({name:"Prince"}) }

  it 'should have a name' do
    expect(diary.name).to eq("Prince")
  end

  it 'should create a text file if one does not exist' do
    expect(File.exist?(diary.name+'.txt')).to eq true
  end

  it 'should #append the text file' do
    diary.append("Wordsmith")
    entries = File.open(diary.name+'.txt').to_a
    expect(entries.last.chomp).to eq("Wordsmith")
  end

  xit 'should add current date to user input' do
  
  end

  xit 'should encode user input' do
	
  end
  

  xit 'should decode encoded text file' do
  
  end

end
