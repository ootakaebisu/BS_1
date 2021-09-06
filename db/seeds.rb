# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  [
    {
      email: "s@s",
      name: "さば缶",
      password: "ssssss"
    },
    {
      email: "t@t",
      name: "とまと缶",
      password: "tttttt"
    },
    {
      email: "m@m",
      name: "メンダコ缶",
      password: "mmmmmm"
    },

  ]
)


Author.create!(
  [
    {name: 'コネシマ'},
    {name: '鬱先生'},
    {name: 'ロボロ'},
    {name: 'シャオロン'},
    {name: 'ゾム'},
    {name: 'エーミール'}
  ]
)

Book.create!(
  [
    {
      author_id: 1,
      title: '宗教論'
    },
    {
      author_id: 1,
      title: '新資本主義'
    },
    {
      author_id: 2,
      title: '愛の不時着'
    },
    {
      author_id: 3,
      title: 'シンギュラリティと哲学'
    },
    {
      author_id: 3,
      title: '筋トレ入門〜今日から貴方もナイスバルク！〜'
    },
    {
      author_id: 4,
      title: '不人気じゃないもん！'
    },
    {
      author_id: 5,
      title: 'FPS最強攻略ガイド'
    },
    {
      author_id: 6,
      title: '蝉時雨と斜陽―エーミール詩集'
    }
  ]
)