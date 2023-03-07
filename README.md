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
## sample output on creation
```
certbot certonly \
   --manual \
   --manual-auth-hook /path/to/ip64-auth.sh \
   --manual-cleanup-hook /path/to/ip64-clean.sh \
   --preferred-challenges dns \
   -d yourdomain.com 
Saving debug log to /var/log/letsencrypt/letsencrypt.log
Requesting a certificate for yourdomain.com
Hook '--manual-auth-hook' for yourdomain.com ran with output:
 {"info":"success","status":"201 Created","add_record":"yourdomain.com"}
Hook '--manual-cleanup-hook' for yourdomain.com ran with output:
 {"info":"success","status":"202 Accepted","del_record":"del_record"}

Successfully received certificate.
Certificate is saved at: /etc/letsencrypt/live/yourdomain.com/fullchain.pem
Key is saved at:         /etc/letsencrypt/live/yourdomain.com/privkey.pem
This certificate expires on 2023-06-05.
These files will be updated when the certificate renews.
Certbot has set up a scheduled task to automatically renew this certificate in the background.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
If you like Certbot, please consider supporting our work by:
 * Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
 * Donating to EFF:                    https://eff.org/donate-le
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
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
