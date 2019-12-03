require 'json'
file = File.read('trips.json')
data_hash = JSON.parse(file)

data_hash["trips"].map{|k,v| 
   st = k["start"]["date"]
   st["date"] = st["$date"]
   st.delete("$date")
   puts st.inspect

   cre = k["createdAt"]
   cre["date"] = cre["$date"]
   cre.delete("$date")
   puts cre.inspect

   upd = k["updatedAt"]
   upd["date"] = upd["$date"]
   upd.delete("$date")
   puts upd.inspect

Trip.create(start: st, end: k["end"], country: k["country"], city: k["city"], passenger: k["passenger"], driver: k["driver"], driver_location: k["driver_location"], price: k["price"], status: k["status"], createdAt: cre, updatedAt: upd, car: k["car"], check_code: k["check_code"])}
