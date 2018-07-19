# ipInfo
get information of specific IP 

## How To Use 
```
sh ipInfo.sh 19.000.13.10
 ```

## Add ipInfo as command to your .zshrc || .profile  || .bashrc
```
cd $HOME
# downlaod 
wget https://raw.githubusercontent.com/ahmedfaragmostafa/ipInfo/master/ipInfo.sh

# export .bashrc
echo 'alias ipInfo="sh $HOME/ipInfo.sh"' >> ~/.bashrc 

# export .zshrc
echo 'alias ipInfo="sh $HOME/ipInfo.sh"' >> ~/.zshrc 

# reload your profile 
source ~/.zshrc 
source ~/.bashrc 
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
