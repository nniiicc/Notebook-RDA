library('RCurl')
library('rjson')
json <- getURL('https://www.kimonolabs.com/api/778e6bfc?apikey=4fd371c8abf01aad82b0e4f9682baa58') ##Call API, and fetch scraped data
obj <- fromJSON(json)
print(obj) 


