feature 'before game' do
  scenario 'welcome sign' do
    visit('/')
    expect(page).to have_content "Sign in to game!"
  end
end

feature 'before game' do
  scenario 'information for sign in' do
    visit('/')
    expect(page).to have_content "Puts your name's and have fun !"
  end
end

feature 'before game' do
 scenario 'player name' do
   visit('/')
   expect(page).to have_content "Player 1 name :"
 end
end


feature 'before game' do
 scenario 'player name' do
   visit('/')
   expect(page).to have_content "Player 2 name :"
 end
end
