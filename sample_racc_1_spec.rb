require './sample_racc_1.tab.rb'

describe 'Calc#parse' do
  it 'calculates numerical operations' do
    # expr = '1 + 2 - 3 * 6 + 12 / 3' NG!!!
    expr = '1+2-3*6+12/3'
    Calc.new.parse(expr).should == eval(expr)

    expr = '1+(2-3)*6+12/3'
    Calc.new.parse(expr).should == eval(expr)
  end
end
