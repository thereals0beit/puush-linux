puush API documentation
-----------------------

###Authentication
 - URL: `/api/auth`
 - Request:
 - - e = email address
 - - k = key OR
 - - p = password
 - - z = "poop"
 - Response (authenticated, success): `{premium},{apikey},[expire],{size-sum}`
 - Response (failure): `-1`

###Deletion
 - URL: `/api/del`
 - Request:
 - - k = apikey
 - - i = file identifier - on puush.me, is base10 of file hash
 - - z = "poop"
 - Response (history, success): `{id},{YYYY-MM-DD HH:MM:SS},{url},{filename},{views},{unknown}`
 - Response (failure): `-1`

###History
 - URL: `/api/hist`
 - Request:
 - - k = apikey
 - Response (history, success): `{id},{YYYY-MM-DD HH:MM:SS},{url},{filename},{views},{unknown}`
 - Response (failure): `-1`

###Thumbnail
 - URL: `/api/thumb`
 - Request:
 - - k = apikey
 - - i = file identifier - on puush.me, is base10 of file hash
 - Response (success): image, resized
 - Response (failure): `-1`

###Upload
 - URL: `/api/up`
 - Request:
 - - k = apikey
 - - z = "poop"
 - - f = file
 - - c = MD5 checksum
 - Response (upload, success): `0,{url},{id},{size}`
 - Response (failure): `-1`
