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
end
