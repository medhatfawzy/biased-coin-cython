# distutils: language = c++
from libc.stdlib cimport rand, RAND_MAX


cdef object biased_coin_flip(double tails_prob):
    cdef double random = rand() / (RAND_MAX + 1.0)
    cdef object outcome = ""

    if random > tails_prob:
        outcome = "head"
    else: 
        outcome = "tails"
    return outcome

cpdef int game_a(int balance, int rounds):
    for i in range(rounds):
        if biased_coin_flip(0.49) == "head":
            balance -= 1
        else:
            balance += 1
    return balance

cpdef int game_b(int balance, int rounds):
    for i in range(rounds):
        coin = biased_coin_flip(0.09) if balance % 3 == 0 else biased_coin_flip(0.74)
        if coin == "head":
            balance -= 1
        else:
            balance += 1
    return balance

cpdef mixed_game(int balance, int rounds):
    for i in range(rounds):
        random = rand() / (RAND_MAX + 1.0)
        if random > 0.5:
            balance = game_a(balance, 1)
        else:
            balance = game_b(balance, 1)

    return balance