# certbot-ipv64

## Usage
```
certbot certonly \ 
   --manual \
   --manual-auth-hook /path/to/ipv64-auth.sh \
   --manual-cleanup-hook /path/to/ipv64-clean.sh \
   --preferred-challenges dns \
   -d yourdomain.com
```
## sample output on renew simulation
```
certbot renew --cert-name yourdomain.com --dry-run
Saving debug log to /var/log/letsencrypt/letsencrypt.log

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Processing /etc/letsencrypt/renewal/yourdomain.com.conf
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Simulating renewal of an existing certificate for yourdomain.com
Hook '--manual-auth-hook' for youtdomain.com ran with output:
 {"info":"success","status":"201 Created","add_record":"yourdomain.com"}
Hook '--manual-auth-hook' for youtdomain.com ran with output:
 {"info":"success","status":"201 Created","add_record":"yourdomain.com"}
Hook '--manual-cleanup-hook' for yourdomain.com ran with output:
 {"info":"success","status":"202 Accepted","del_record":"del_record"}
Hook '--manual-cleanup-hook' for yourdomain.com ran with output:
 {"info":"success","status":"202 Accepted","del_record":"del_record"}

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Congratulations, all simulated renewals succeeded: 
  /etc/letsencrypt/live/yourdomain.com/fullchain.pem (success)
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
```
