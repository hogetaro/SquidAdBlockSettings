# SquidAdBlockSettings
My Squid Ad Block Settings

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

