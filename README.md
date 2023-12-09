卒業試験のREADMEを提出いたします。ご確認のほどよろしくお願いいたします。

# サービス概要
韓国コスメに特化した、ユーザーのスキンケアをサポートするサービスです。

具体的には、
- 韓国コスメを使ったことがないけれど興味がある人に向けて、お悩みや肌質別にそれぞれに合った韓国コスメを提案します。
- スキンケアコスメの買い忘れ・使用期限切れを防げるようサポートします。
- お肌の大敵である紫外線や乾燥から、ユーザーのお肌を守る手助けをします。

# サービスを作成した背景
- 私自身、K-POPにハマったのをきっかけに韓国コスメにハマり、その良さを広めたいと思ったため
- 色々なスキンケア商品を試すのが好きで、友人の悩みに合わせてコスメをおすすめしたり、スキンケアの話をするのが好きなため
- 私が好きな「韓国」と「スキンケア」の要素を掛け合わせることで、オリジナリティが出ると考えたため

# 想定されるユーザー層
- スキンケアについて悩みを抱えている人
- どのスキンケアコスメを選んだらいいか迷ってしまう人
- 韓国コスメを使ったことがないけれど興味がある人
- すでに韓国コスメ使っていて、他にどんな韓国コスメがあるのか知りたい人

# 主要機能
## MVPリリース
### レコメンド機能
- 悩み、肌質、年代などを入力したら、それぞれに合った韓国コスメを提案
  - 悩み…乾燥、美白、ニキビ、毛穴など
  - 肌質…脂性肌、乾燥肌、混合肌、敏感肌など

- 金額を入力したら、その価格帯の韓国コスメを提案
  - 単品もしくはセットかを選択できる
  - セットの場合は「化粧水＋美容液＋クリーム」セットなど

### LINE通知機能
- 買い忘れ防止：使用しているコスメ、およびコスメを使い終わる日数をあらかじめ登録しておいたら「もうすぐなくなるから買っておいたほうがいいよ」って通知で教えてくれる
- 使用期限お知らせ：コスメの使用期限をあらかじめ登録しておいたら「そろそろ替え時だよ」って通知で教えてくれる
- 今日はこれに注意：住所を登録したら、天候に合わせて今日は何をするべき（注意するべき）って通知で教えてくれる
  - 紫外線に注意（日傘さす、日焼け止め塗る）、乾燥に注意など

## 本リリース
### レビュー投稿機能
- 掲示板形式にして、他のユーザーがレビューを基に情報を得られるようにする
- 他の人の投稿にコメントできる
- 投稿内に商品リンクを貼り、直接購入できる
- 悩み・肌質・年代でタグ検索できる
- ５段階評価をつけられる
- 自分だけが見たい投稿と、他の人に教えたい投稿で分けられる

### お気に入りコスメ登録機能（マイページ内）
- レコメンド機能でレコメンドされたコスメのお気に入りと、他の人のレビュー投稿のお気に入りを合わせた一覧

### 合わなかったコスメ登録機能（マイページ内）
- 「これを使ったらニキビができた」など記録しておける
- アプリ内でレコメンドされたもの以外でも記録できる

### ランキング機能
- カテゴリ（悩み、肌質、年代）別にレビュー内の評価が高い順でランキング

# その他の機能
### MVPリリース
- 診断機能
  - トップページにて、悩み・肌質・年代を選択していくと、それに合ったコスメを提案
- 会員登録
- ログイン/ ログアウト
- マイページ
  - プロフィール
  - 悩み・肌質・年代の登録 / 編集

### 本リリース
- レビュー投稿のTwitterシェア機能
- LINE通知にて、韓国で人気の製品、新しい韓国コスメ情報を提供
  - InstagramグラフAPIを使用し、ハッシュタグ「韓国スキンケア」の投稿を取得予定

# 使用技術
|カテゴリ|技術|
|:-------------|:------------|
|開発環境|Docker|
|フロントエンド|Next.js|
|バックエンド|Ruby on Rails 7系|
|データベース|PostgreSQL|
|インフラ|Vercel / Render|
|Web API|楽天市場商品検索API / LINE Messaging API / OpenWeatherMap API / InstagramグラフAPI|
