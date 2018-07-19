# ipInfo
Get information of specific IP 

## How To Use 
```
ipInfo 85.203.13.62
 ```

## Add ipInfo as command to your .zshrc || .bashrc
```
# clone repo 
git clone git@github.com:ahmedfaragmostafa/ipInfo.git

# install missing packages 
make prepare

# add to your .zshrc
make zshrc

# add to your .bashrc
make bashrc
```

## Output
```
{
    "as": "AS49544 i3D.net B.V",
    "city": "Paris",
    "country": "France",
    "countryCode": "FR",
    "isp": "Falco Networks",
    "lat": 48.8628,
    "lon": 2.3292,
    "org": "Falco Networks",
    "query": "85.203.13.62",
    "region": "IDF",
    "regionName": "\u00cele-de-France",
    "status": "success",
    "timezone": "Europe/Paris",
    "zip": "75001"
}
```
