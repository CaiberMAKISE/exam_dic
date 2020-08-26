require 'rails_helper'
RSpec.describe '', type: :model do
  it 'ソフト名が空ならバリデーションが通らない' do
    post = Post.new(software_name: '', content: '失敗テスト')
    expect(post).to_not be_valid
  end
  it '内容が空ならバリデーションが通らない' do
    post = Post.new(software_name: '失敗テスト', content: '')
    expect(post).to_not be_valid
  end
  it 'ソフト名・内容が記載済みならバリデーションが通る' do
    post = Post.new(software_name: '成功テスト', content: '成功')
    expect(post).to be_valid
  end
end