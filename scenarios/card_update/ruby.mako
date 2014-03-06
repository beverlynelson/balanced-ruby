% if mode == 'definition':
Balanced::Card.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

card = Balanced::Card.fetch('/cards/CC4cbNzUmFqGrc1GmFpXp6fe')
card.meta = {
  'facebook.user_id' => '0192837465',
  'twitter.id' => '1234987650',
  'my-own-customer-id' => '12345'
}
card.save

% elif mode == 'response':
#<Balanced::Card:0x10e255d50
 @attributes=
  {"cvv_result"=>"Match",
   "avs_street_match"=>nil,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "avs_postal_match"=>nil,
   "number"=>"xxxxxxxxxxxx5100",
   "links"=>{"customer"=>nil},
   "brand"=>"MasterCard",
   "name"=>nil,
   "created_at"=>"2014-03-05T23:26:12.047635Z",
   "avs_result"=>nil,
   "id"=>"CC4cbNzUmFqGrc1GmFpXp6fe",
   "href"=>"/cards/CC4cbNzUmFqGrc1GmFpXp6fe",
   "cvv"=>"xxx",
   "meta"=>
    {"facebook.user_id"=>"0192837465",
     "twitter.id"=>"1234987650",
     "my-own-customer-id"=>"12345"},
   "is_verified"=>true,
   "updated_at"=>"2014-03-05T23:26:15.715688Z",
   "cvv_match"=>"yes",
   "address"=>
    {"country_code"=>nil,
     "line2"=>nil,
     "line1"=>nil,
     "state"=>nil,
     "city"=>nil,
     "postal_code"=>nil},
   "expiration_year"=>2020,
   "expiration_month"=>12},
 @hyperlinks=
  {"card_holds"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "customer"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>

% endif
