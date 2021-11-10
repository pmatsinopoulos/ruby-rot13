RSpec.describe 'rot13' do
  subject(:encode) { rot13(secret_messages) }

  context 'when case 1' do
    let(:secret_messages) do
      [
        'Why did the chicken cross the road?',
        'Gb trg gb gur bgure fvqr!'
      ]
    end

    let(:expected_result) do
      [
        'Jul qvq gur puvpxra pebff gur ebnq?',
        'To get to the other side!'
      ]
    end

    it 'converts case 1' do
      expect(encode).to eq(expected_result)
    end
  end
end
