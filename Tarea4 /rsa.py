import random
from math import gcd

def mod_inverse(e, phi):
    def egcd(a, b):
        if a == 0:
            return b, 0, 1
        g, y, x = egcd(b % a, a)
        return g, x - (b // a) * y, y

    g, x, y = egcd(e, phi)
    return x % phi

p = 101111
q = 101113

n = p * q
phi = (p - 1) * (q - 1)

e = 65537
d = mod_inverse(e, phi)

print("Public key:", (n, e))
print("Private key:", (n, d))
