require 'rspec'

class ChangeMachine


  def output(number)
    array = []
    if number 
      (number / 25).times do
        array << 25
      end
    # if number < 5
    #   number.times do 
    #     array << 1 
    # elsif number < 10
    #     array << 5
    #   end
      p array 
    end
  end

end

RSpec.describe ChangeMachine do
    describe '#output' do

      let(:changemachine) { ChangeMachine.new }

      it 'should return a number of 1s if the number given is less than 5 equal to the number given' do
        expect(changemachine.output(100)).to eq([25, 25, 25, 25])
      end

  end
end