# coinamatic
get your coinamatic laundry machine nfc card balance

1. Dump your coinamatic nfc laundry card (https://s.click.aliexpress.com/e/_DkaAQfR)
2. Drop your dump onto `getbalance_v1.vbs` to obtain your balance

this does not do all checks to validate the balance (assuming you did not mess with it)
to dump your coinamatic nfc laundry card, I used: https://s.click.aliexpress.com/e/_DkaAQfR

to modify the balance, I will leave that up to your imagination ;)
there are 10 bits to change that hold the value, and 4 bits hold a ?checksum? which seems to be a reverse balance.

other bits may change, but i have not played around with anything else.
