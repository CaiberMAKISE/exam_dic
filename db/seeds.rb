# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@admin.com', password: '7218099', password_confirmation: '7218099')
30.times do |n|
    user = User.new(
      email: "#{n + 1}@test.com",
      username: "テスト#{n + 1}",
      password: "13549#{n + 1}",
      password_confirmation: "13549#{n + 1}"
    )
    user.save!
end

post = Post.new(
  software_name: "Synth1",
  content: "日本人が個人で製作したフリーのソフトシンセ。
  フリーのシンセとして非常に有名で、多くのプリセットが配布されており初心者にオススメ。",
  created_at: "2020-01-01 12:00",
  updated_at: "2020-01-01 12:00",
  user_id: 1
)
post.save!

post = Post.new(
  software_name: "Serum",
  content: "現状世界でもトップクラスに有名なシンセソフト。
  比較的ソリッドな音を得意とし、また扱いやすいUIで自分で様々な音も作りやすいのが特徴。
  配布・販売プリセットには海外EDMの有名トラックメイカーが作ったものも多数あるので手軽にプロの音が出せる。
  価格は20000円台、ただし円高時には20000を切ることも。セールは無いがSpliceにサブスクがある。",
  created_at: "2020-01-01 12:00",
  updated_at: "2020-01-01 12:00",
  user_id: 1
)
post.save!

post = Post.new(
  software_name: "SAUSAGE FATTNER",
  content: "むかつくソーセージのUIが特徴の、EDM界隈では恐らく知らぬ人の居ない有名ディストーションプラグイン。
  とりあえずでトラックに刺すだけで音が簡単に太くなるのが特徴。つまみが二つだけなのも初心者に優しい。
  値段も5000円を超えないのでプラグインとしてはお手頃。",
  created_at: "2020-01-01 12:00",
  updated_at: "2020-01-01 12:00",
  user_id: 1
)
post.save!

30.times do |n|
  post = Post.new(
    software_name: "software#{n + 1}",
    content: "content#{n + 1}",
    created_at: "2020-01-01 12:00",
    updated_at: "2020-01-01 12:00",
    user_id: 1
  )
  post.save!
end