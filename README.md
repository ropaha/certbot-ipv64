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
