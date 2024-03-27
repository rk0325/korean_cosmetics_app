# frozen_string_literal: true

# 都道府県の県庁所在地の緯度と経度
addresses = [
  { address: '北海道', latitude: 43.06417, longitude: 141.34694 },
  { address: '青森県', latitude: 40.82444, longitude: 140.74000 },
  { address: '岩手県', latitude: 39.70361, longitude: 141.15250 },
  { address: '宮城県', latitude: 38.26889, longitude: 140.87194 },
  { address: '秋田県', latitude: 39.71861, longitude: 140.10250 },
  { address: '山形県', latitude: 38.24056, longitude: 140.36333 },
  { address: '福島県', latitude: 37.75000, longitude: 140.46778 },
  { address: '茨城県', latitude: 36.34139, longitude: 140.44667 },
  { address: '栃木県', latitude: 36.56583, longitude: 139.88361 },
  { address: '群馬県', latitude: 36.39111, longitude: 139.06083 },
  { address: '埼玉県', latitude: 35.85694, longitude: 139.64889 },
  { address: '千葉県', latitude: 35.60472, longitude: 140.12333 },
  { address: '東京都', latitude: 35.68944, longitude: 139.69167 },
  { address: '神奈川県', latitude: 35.44778, longitude: 139.64250 },
  { address: '新潟県', latitude: 37.90222, longitude: 139.02361 },
  { address: '富山県', latitude: 36.69528, longitude: 137.21139 },
  { address: '石川県', latitude: 36.59444, longitude: 136.62556 },
  { address: '福井県', latitude: 36.06528, longitude: 136.22194 },
  { address: '山梨県', latitude: 35.66389, longitude: 138.56833 },
  { address: '長野県', latitude: 36.65139, longitude: 138.18111 },
  { address: '岐阜県', latitude: 35.39111, longitude: 136.72222 },
  { address: '静岡県', latitude: 34.97694, longitude: 138.38306 },
  { address: '愛知県', latitude: 35.18028, longitude: 136.90667 },
  { address: '三重県', latitude: 34.73028, longitude: 136.50861 },
  { address: '滋賀県', latitude: 35.00444, longitude: 135.86833 },
  { address: '京都府', latitude: 35.02139, longitude: 135.75556 },
  { address: '大阪府', latitude: 34.68639, longitude: 135.52000 },
  { address: '兵庫県', latitude: 34.69139, longitude: 135.18306 },
  { address: '奈良県', latitude: 34.68528, longitude: 135.83278 },
  { address: '和歌山県', latitude: 34.22611, longitude: 135.16750 },
  { address: '鳥取県', latitude: 35.50361, longitude: 134.23833 },
  { address: '島根県', latitude: 35.47222, longitude: 133.05056 },
  { address: '岡山県', latitude: 34.66167, longitude: 133.93500 },
  { address: '広島県', latitude: 34.39639, longitude: 132.45944 },
  { address: '山口県', latitude: 34.18583, longitude: 131.47139 },
  { address: '徳島県', latitude: 34.06583, longitude: 134.55944 },
  { address: '香川県', latitude: 34.34028, longitude: 134.04333 },
  { address: '愛媛県', latitude: 33.84167, longitude: 132.76611 },
  { address: '高知県', latitude: 33.55972, longitude: 133.53111 },
  { address: '福岡県', latitude: 33.60639, longitude: 130.41806 },
  { address: '佐賀県', latitude: 33.24944, longitude: 130.29889 },
  { address: '長崎県', latitude: 32.74472, longitude: 129.87361 },
  { address: '熊本県', latitude: 32.78972, longitude: 130.74167 },
  { address: '大分県', latitude: 33.23806, longitude: 131.61250 },
  { address: '宮崎県', latitude: 31.91111, longitude: 131.42389 },
  { address: '鹿児島県', latitude: 31.56028, longitude: 130.55806 },
  { address: '沖縄県', latitude: 26.21250, longitude: 127.68111 }
]

addresses.each do |address_data|
  # Addressインスタンスを直接作成
  Address.find_or_create_by(address: address_data[:address]) do |address|
    address.latitude = address_data[:latitude]
    address.longitude = address_data[:longitude]
  end
end
