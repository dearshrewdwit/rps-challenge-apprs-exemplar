require 'spec_helper'

feature "RPS Challenge" do
  scenario 'I can win' do
    visit('/')
    srand(749)
    click_button('rock')
    expect(page.current_path).to eq('/result')
    expect(page).to have_content('You won!')
  end

  scenario 'I can lose' do
    visit('/')
    srand(758)
    click_button('rock')
    expect(page.current_path).to eq('/result')
    expect(page).to have_content('You lost!')
  end

  scenario 'I can draw' do
    visit('/')
    srand(755)
    click_button('rock')
    expect(page.current_path).to eq('/result')
    expect(page).to have_content('You drew!')
  end
end
