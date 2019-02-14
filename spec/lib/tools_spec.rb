require './lib/tools.rb'
describe 'tools' do
  it 'return array of developers with file data' do
    tools = Tools.new('./developers_example.txt')
    tools.load
    expect(tools.devs).to eq(%w[carlos juan fernando javier alberto])
  end
  it 'return array nil without data' do
    tools = Tools.new('./developers_empty.txt')
    tools.load
    expect(tools.devs).to eq([])
  end
end