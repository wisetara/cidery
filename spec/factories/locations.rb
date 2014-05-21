# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    place_name "Finnriver Farm & Cidery"
    street_address "62 Barn Swallow Rd"
    city "Chimacum"
    state "WA"
    zip "98325"
    country "United States"
    phone "(360) 732-4337"
    email "info@finnriverfarm.com"
    URL "http://www.finnriver.com/cidery/tasting-room"
    tour_tasting_days_hours "OPEN HOURS 7 DAYS A WEEK, 12-5"
    tour_tasting_info "Enjoy the rural views of fields and orchards or, if your shoes are up for the adventure, walk down to the creek or explore the farm. You may even catch us in the act of pressing apples, feeding chickens, picking berries or bottling cider. This is a working farm, as well as a licensed winery, and we enjoy sharing what we do with visitors; we do ask you respect our request for no smoking and no visiting dogs on the land.  You can walk the self-guided Soil & Salmon Trail down to the creek to learn more about our mission and history and you can also bring a picnic to enjoy under the Finnriver pavilion.
We hope to see you here! $5 per person Tasting Fee.  We offer case discounts and club memberships too."
    general_info "Finnriver is an organic family farm and an artisan winery producing handcrafted hard ciders and fruit wines. We farm and ferment on 33 acres along a restored salmon stream in the Chimacum Valley, south of Port Townsend on the north Olympic Peninsula of Washington. While our farm is remote, we are honored to be on the forefront of the Pacific Northwest craft hard cider revival and we are committed to handcrafting both traditional and innovative hard ciders with a base of 100% apple juice, primarily Washington organic and Olympic Peninsula homestead apples. Our ciders are a tribute to the old hard cider traditions while offering an approachable, fresh perspective on the possibilities of the fermented apple. We also craft an array of sumptuous brandy-fortified fruit wines and unique oak-aged, port-style wines. Finnriver Farm & Cidery is certified salmon safe and we are committed to wise land stewardship through organic agriculture, conservation easements, habitat restoration and community outreach."
    map_info_lat 47.976655
    map_info_lng -122.778911
  end
end
