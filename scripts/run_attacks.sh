#!/bin/bash
# Reference commands for all Hashcat attack vectors tested in lab
# 1. Dictionary Attack (MD5)
hashcat -m 0 target_hashes.txt rockyou.txt --show

# 2. Mask Attack (4-Digit PIN)
hashcat -m 0 -a 3 target_hashes.txt ?d?d?d?d

# 3. Rule-Based Attack (best66.rule)
hashcat -m 0 target_hashes.txt rockyou.txt -r /usr/share/hashcat/rules/best66.rule

# 4. Hybrid Attack (Wordlist + 4-Digit Mask)
hashcat -m 0 -a 6 target_hashes.txt rockyou.txt ?d?d?d?d

# 5. Multi-Algorithm Transition (SHA-256)
hashcat -m 1400 -a 6 sha256_target.txt rockyou.txt ?d?d?d
