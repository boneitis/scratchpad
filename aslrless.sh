#/bin/bash
echo spawning shell minus aslr
ASLRLESS=giggity setarch "$(uname -m)" -R /bin/bash
echo aslr-less shell closed

