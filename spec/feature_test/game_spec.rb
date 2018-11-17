feature 'showing player vs player' do
  scenario 'expect page to have plaer vs player' do
    visit('/')
    fill_in :player_1, with: 'Matt'
    fill_in :player_2, with: 'Kasia'
    click_button 'Start'
    expect(page).to have_content "Matt vs. Kasia"
  end
end

feature 'showing player vs player' do
  scenario 'expect page to have plaer vs player' do
    visit('/')
    fill_in :player_1, with: 'Matt'
    fill_in :player_2, with: 'Kasia'
    click_button 'Start'
    expect(page).to have_content "Are you ready?!"
  end
end

feature 'showing player vs player' do
  scenario 'expect page to have plaer vs player' do
    visit('/')
    fill_in :player_1, with: 'Matt'
    fill_in :player_2, with: 'Kasia'
    click_button 'Start'
    expect(page).to have_content "Matt"
  end
end

feature 'showing player vs player' do
  scenario 'expect page to have plaer vs player' do
    visit('/')
    fill_in :player_1, with: 'Matt'
    fill_in :player_2, with: 'Kasia'
    click_button 'Start'
    expect(page).to have_content "Kasia"
  end
end
