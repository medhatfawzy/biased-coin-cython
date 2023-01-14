# distutils: language = c++
from libc.stdlib cimport rand, RAND_MAX


cpdef object coin_flip():
    cdef double random = rand() / (RAND_MAX + 1.0)
    
    cdef object outcome = ""
    if random > 0.49:
        outcome = "head"
    else: 
        outcome = "tails"
    return outcome
