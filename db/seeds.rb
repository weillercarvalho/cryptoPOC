# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
[
  { description: 'Bitcoin', acronym: 'BTC', url_image: 'https://cryptologos.cc/logos/ethereum-eth-logo.png' },
  { description: 'Dash', acronym: 'DASH', url_image: 'https://cryptologos.cc/logos/dash-dash-logo.png' },
  { description: 'Solana', acronym: 'SOL', url_image: 'https://cryptologos.cc/logos/solana-sol-logo.png' }
]
  .each do |coin|
  Coin.find_or_create_by!(coin)
end

[
  { description: 'Proof of Work', acronym: 'PoW' },
  { description: 'Proof of Stake', acronym: 'PoS' },
  { description: 'Proof of Capacity', acronym: 'PoC' }
]
  .each do |mining|
  MiningType.find_or_create_by!(mining)
end
