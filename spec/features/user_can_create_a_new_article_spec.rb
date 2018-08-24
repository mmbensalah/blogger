require 'rails_helper'

describe 'user creates a new article' do
  describe 'they link from articles index' do
    describe 'they fill in a title and body' do
      it 'creates a new article' do
        visit articles_path
        click_link "Create a New Article"

        expect(current_path).to eq(new_article_path)

        fill_in "article[title]", with: "How To Be Better"
        fill_in "article[body]",  with: "It's not easy."
        click_on "Create Article"

        expect(page).to have_content("How To Be Better")
        expect(page).to have_content("It's not easy.")
      end
    end
  end
end
