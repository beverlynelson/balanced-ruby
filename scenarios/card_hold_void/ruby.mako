% if mode == 'definition':
Balanced::CardHold.void

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-2cSDy37BKy5K4NUHKHVNXNTjTHPEqjRtB')

card_hold = Balanced::CardHold.fetch('/card_holds/HL4fmk2370zAE7nAVujKxjtf')
card_hold.void
% elif mode == 'response':
#<Balanced::CardHold:0x10e2d1c20
 @attributes=
  {"transaction_number"=>"HL299-976-7990",
   "failure_reason_code"=>nil,
   "amount"=>5000,
   "links"=>{"debit"=>nil, "card"=>"CC3ZsWHP2jMgvFrrzDzfZS0q"},
   "expires_at"=>"2014-03-12T23:26:09.014221Z",
   "voided_at"=>"2014-03-05T23:26:09.634528Z",
   "failure_reason"=>nil,
   "description"=>"Some descriptive text for the debit in the dashboard",
   "created_at"=>"2014-03-05T23:26:08.860551Z",
   "id"=>"HL4fmk2370zAE7nAVujKxjtf",
   "href"=>"/card_holds/HL4fmk2370zAE7nAVujKxjtf",
   "meta"=>{},
   "currency"=>"USD",
   "updated_at"=>"2014-03-05T23:26:09.634525Z",
   "status"=>"succeeded"},
 @hyperlinks=
  {"debit"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>,
   "card"=>#<Proc:0x000000010dd8ce90@./lib/balanced/resources/resource.rb:60>,
   "events"=>
    #<Proc:0x000000010dd75010/lib/balanced/utils.rb:6>}>

% endif
