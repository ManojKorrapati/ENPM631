$TTL    604800
@       IN      SOA     ns1.testwebsite.com. root.testwebsite.com. (
                  3       ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
     IN      NS      ns1.testwebsite.com.


; 10.128.0.0/16 - A records
ns1.testwebsite.com.	IN	A	10.128.10.11
host1.testwebsite.com.        IN      A      10.128.100.101
