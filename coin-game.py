import time
from coin_flip import coin_flip

start = time.time()

head_count = 0
tails_count = 0
for i in range(100000000):
    if coin_flip() == "head":
        head_count += 1
    else:
        tails_count += 1

end  = time.time()
print(f"Got {head_count} heads and {tails_count} tails")
print(f"Done in {end - start} s")
