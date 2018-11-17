feature 'showing player score' do
  scenario 'expect page to have draw' do
    visit('/draw')
    expect(page).to have_content "DRAW !"


  end
end
