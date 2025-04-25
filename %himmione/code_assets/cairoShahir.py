#!/usr/bin/env/ python3

import hashlib

def cairo(text):
    # encode the text to bytes, then hash it
    return hashlib.sha256(text.encode('utf-8')).hexdigest()

# input: .append('salt')
shahir = input('enter input: ')

# example usage
print(cairo(shahir))

# enter input: 35durant
# b15a4b476676296eda28cb497d63e1a81abd0a7138e74e4d9df6394e8eabfdc4
# enter input: durant35
# e02e125f032d0f2313a604e4bf3f94cbf1981abee2a42a48aff7593f9f115d1a
# >>>