require "rails_helper"

feature 'User can edit a specific article' do
    
    before do
      create(:article, title: 'A breaking news item', content: 'Some breaking action')
      
      visit root_path
      click_on 'A breaking news item'
      click_on 'Edit'

    end
    
    describe 'User can edit article' do
        it 'can update title' do
            fill_in 'Title', with: '123'
            click_on 'Update Article'
            expect(page).to have_content '123'
        end

        it 'can update content' do
            fill_in 'Content', with: '456'
            click_on 'Update Article'
            expect(page).to have_content '456'
        end
    end
end