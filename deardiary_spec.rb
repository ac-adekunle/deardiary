require 'date'
require_relative 'diary'

describe Diary do 
  let(:diary) { Diary.new({name:"Prince"}) }

  it 'should have a name' do
    expect(diary.name).to eq("Prince")
  end

  it 'should create a text file if one does not exist' do
    expect(File.exist?(diary.name+'.txt')).to eq true
  end

  it 'should encrypt the entries' do
	  diary.append("Artist")
    entries = File.open(diary.name+'.txt').to_a
    expect(entries.last.chomp).to_not eq(Date.today.to_s+ ' | ' +"Artist")
  end

  it 'should decrypt the encrypted entries' do
    diary.append("Wordsmith")
    entries = File.open(diary.name+'.txt').to_a
    expect(diary.decrypt(entries.last.chomp)).to eq(Date.today.to_s+ ' | ' +"Wordsmith")
  end
end
