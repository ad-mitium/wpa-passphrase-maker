# wpa-passphrase-maker Script

Basic bash script to create a basic wpa_supplicant.conf file that doesn't keep the passphrase in your command history.  

It is intended to output a template file for configuring wireless network connectivity at boot time.

## Example

Excuting:
<pre>home_user:~ $ wpa_passphrase_maker.sh</pre>

<pre><code>Executing...
Enter SSID: Internal_one
Enter passphrase: Apples_are_not_orange!
network={
        ssid="Internal_one"
        #psk="Apples_are_not_orange!"
        psk=2bbda9de2186fd712426ce51a4ccc7d60e58a08d9e26b0b54d95165690627c93
}
Output written to wpa_supplicant.conf:
network={
        ssid="Internal_one"
        #psk="**********"
        psk=2bbda9de2186fd712426ce51a4ccc7d60e58a08d9e26b0b54d95165690627c93
}
Copy this file to /etc directory after adding neccesary info
</code></pre>
</pre>

## To Do

- TBD
