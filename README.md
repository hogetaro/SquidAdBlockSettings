# SquidAdBlockSettings
My Squid Ad Block Settings

## To include into your squid 

### generate acl file
```
ruby generate_acls.rb /etc/squid/conf.d/some.conf
```

### Include it from your conf
in `squid.conf` 

```
include /etc/squid/conf.d/*
```

