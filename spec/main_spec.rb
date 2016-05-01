describe MyApp do
  describe '#index' do
    before { visit '/' }
    it 'has time input element' do
      expect(page).to have_css 'input[type="time"]'
    end

    it 'has date input element' do
      expect(page).to have_css 'input[type="date"]'
    end
    it 'has submit element' do
      expect(page).to have_css 'input[type="submit"]'
    end
  end
end
