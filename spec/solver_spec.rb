require './solver'

describe Solver do
  subject(:solver) { described_class.new }

  describe '#factorial' do
    it 'returns the correct factorial for a positive number' do
      expect(solver.factorial(5)).to eq(120)
    end

    it 'returns 1 for factorial of 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'outputs an error message for a negative number' do
      expected_output = "Invalid input. Please provide a positive integer.\n"
      expect { solver.factorial(-2) }.to output(expected_output).to_stdout
    end

    it 'outputs an error message for a non-integer' do
      expected_output = "Invalid input. Please provide a positive integer.\n"
      expect { solver.factorial(3.14) }.to output(expected_output).to_stdout
    end
  end

  describe '#reverse' do
    it 'outputs an error message for a non-string' do
      expected_output = "Invalid input. Please provide a string \n"
      expect { solver.reverse(3.14) }.to output(expected_output).to_stdout
    end
    it 'outputs an error message for a non-string' do
      expected_output = "Invalid input. Please provide a string \n"
      expect { solver.reverse(345_434) }.to output(expected_output).to_stdout
    end
    it 'outputs the reverse of word' do
      expected_output = 'drow'
      word = 'word'
      expect(solver.reverse(word)).to eql(expected_output)
    end
  end
  describe '#fizzbuzz' do
    it 'returns "fizz" when N is divisible by 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(6)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" when N is divisible by 5' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(10)).to eq('buzz')
      expect(solver.fizzbuzz(20)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when N is divisible by 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(45)).to eq('fizzbuzz')
    end

    it 'returns N as a string for any other case' do
      expect(solver.fizzbuzz(7)).to eq('7')
      expect(solver.fizzbuzz(13)).to eq('13')
      expect(solver.fizzbuzz(22)).to eq('22')
    end
  end
end
