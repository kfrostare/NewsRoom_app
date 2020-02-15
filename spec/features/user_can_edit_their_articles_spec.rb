require "rails_helper"

feature 'User can edit specific article' do
    before do
      create(:article, title: 'The edit of content', content: 'I will edit the content of this article')
      create(:article, title: 'A breaking news item', content: 'Some breaking action')
      create(:article, title: 'Learn Rails 5', content: 'Build awesome rails applications')

      visit root_path
      click_on 'The edit of content'
    end
  
    context 'Article displays' do
      it 'title' do
        expect(page).to have_content 'The edit of content'
      end
  
      it 'content' do
        expect(page).to have_content 'I will edit the content of this article'
      end
    end

    context 'content can be edited' do
        it 'user can click edit button' do
            click_on 'Edit article'
            expect(page).to have_content 'Save and publish'
        end

        it 'user can change content' do
            click_on 'Edit article'
            fill_in 'Article', with: 'BlaBla'
            click_on 'Save and publish'
            expect(page).to have_content 'BlaBla'
        end
    end
  end