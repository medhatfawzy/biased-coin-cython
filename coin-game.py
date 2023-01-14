import time
from coin_flip import game_a, game_b, mixed_game

start = time.time()

balance = 1000
rounds =  1000000

end_balance_a = game_a(balance, rounds)
end_balance_b = game_b(balance, rounds)
end_balance_mixed = mixed_game(balance, rounds)

end  = time.time()
print(f"Won {end_balance_a} in Game A")
print(f"Won {end_balance_b} in Game B")
print(f"Won {end_balance_mixed} in MixedGame")
print(f"Done in {end - start}s")
