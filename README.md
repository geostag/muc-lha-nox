# muc-lha-nox
visualization of NOx values in Bavaria (you might know about the Landshuter Allee...).

Raw data ist crawled from https://inters.bayern.de/luft/messwertarchiv/NO2_*

# how to create it
```
. env.sh
# get the data
crawl-data
# extract and create json from ist
raw2json
# put everything together and create a html page 
createHtml
```
Look at the result in your favorite browser: file:///data/monthly.html

![screenshot](/screenshot.png "screenshot")