require 'rails_helper'
RSpec.describe '', type: :system do
  describe 'ログイン前' do
    context '一覧画面を表示した場合' do
      it '投稿が出来ない' do
        visit posts_path
        expect(page).to_not have_content '投稿'
      end
    end
    context '情報を記入した場合' do
      it 'アカウント登録できる' do
        visit posts_path
        click_on 'サインアップ'
        fill_in 'user_email', with: 'test@test.com'
        fill_in 'user_password', with: '123456'
        fill_in 'user_password_confirmation', with: '123456'
        click_on 'Sign up'
        click_on 'マイページ'
        expect(page).to have_content 'マイページ'
      end
    end
  end
  describe 'ログイン後' do
    context '一覧画面を表示した場合' do
      it '投稿ができる' do
        visit posts_path
        click_on 'サインアップ'
        fill_in 'user_email', with: 'test@test.com'
        fill_in 'user_password', with: '123456'
        fill_in 'user_password_confirmation', with: '123456'
        click_on 'Sign up'
        visit posts_path
        expect(page).to have_content 'レビュー投稿'
      end
      it '投稿が反映される' do
        visit posts_path
        click_on 'サインアップ'
        fill_in 'user_email', with: 'test@test.com'
        fill_in 'user_password', with: '123456'
        fill_in 'user_password_confirmation', with: '123456'
        click_on 'Sign up'
        click_on 'マイページ'
        click_on 'ユーザー情報変更'
        fill_in 'user_current_password', with: '123456'
        fill_in 'user_username', with: 'test'
        click_on '更新する'
        click_on 'レビュー投稿'
        fill_in 'post_software_name', with: 'plugins'
        fill_in 'post_content', with: 'content'
        click_on '登録'
        expect(page).to have_content 'plugins'
      end
      it 'ユーザー詳細が見られる' do
        visit posts_path
        click_on 'サインアップ'
        fill_in 'user_email', with: 'test@test.com'
        fill_in 'user_password', with: '123456'
        fill_in 'user_password_confirmation', with: '123456'
        click_on 'Sign up'
        click_on 'マイページ'
        click_on 'ユーザー情報変更'
        fill_in 'user_current_password', with: '123456'
        fill_in 'user_username', with: 'test'
        click_on '更新する'
        click_on 'レビュー投稿'
        fill_in 'post_software_name', with: 'plugins'
        fill_in 'post_content', with: 'content'
        click_on '登録'
        click_on 'ユーザー詳細'
        expect(page).to have_content 'ユーザー詳細'
      end
    end
  end
end