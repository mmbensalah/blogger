require 'rails_helper'

describe 'User Can Edit An Article' do
  it 'user can edit an article' do
    article_1 = Article.create!(title: 'Hello', body: 'Text here')
    visit article_path("#{article_1.id}")
    click_on 'Edit'

    expect(current_path).to eq edit_article_path("#{article_1.id}")
    fill_in 'article[title]', with: 'New Title'
    fill_in 'article[body]', with: 'Bodybodybody'

    click_on "Update Article"
    expect(current_path).to eq article_path("#{article_1.id}")
    expect(page).to have_content(Article.first.title)
    expect(page).to have_content(Article.first.body)
    expect(page).to have_content("Article '#{Article.first.title}' Updated!")

  end
end
