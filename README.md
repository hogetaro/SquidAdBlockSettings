# SquidAdBlockSettings
My Squid Ad Block Settings.
Call it `Pathological Electric Rubbish Filter`.

- removes aweful ads from your online experience
- especially that narrows your iphone display
- especially ads from suckerfish ad-firms those produce no value to the world

## Wachet auf, ruft uns die Stimme
It also blocks tracking codes, that exposes your online activity to the world.
facebook? , twitter? Remember!
*When something online is free, you are not the customer, you are the product being sold!*

Open Your Eyes!

## To include into your squid 

### Generate acl file
```
# ruby generate_acls.rb > /etc/squid/conf.d/some.conf
```

### Include it from your conf
edit your  `squid.conf` including ,

```
include /etc/squid/conf.d/*
```

## If you find unwanted ad...( for me )
- `tail -f /var/log/squid/access.log|grep -v TCP_DENIED` 
  ,reload the page and lookup ad url.
- add the url to `etc/acl-dstdom_regex-Ad_Networks.txt`
- `bash update.sh`

