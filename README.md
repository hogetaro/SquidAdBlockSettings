# SquidAdBlockSettings
My Squid Ad Block Settings.
Call it `Pathological Electric Rubbish Filter`.

- removes awesome ads from your online experience
- especially that narrows your iphone display

## Wachet auf, ruft uns die Stimme
It also blocks tracking codes, that exposes your online activity to the world.
facebook? , twitter?
`When something online is free, you are not the customer, you are the product being sold!` 
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

## To update and check access log( for me )
```
bash update.sh
```

