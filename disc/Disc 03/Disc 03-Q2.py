def is_prime(n):
    """Returns True if n is a prime number and False otherwise.
    >>> is_prime(2)
    True
    >>> is_prime(16)
    False
    >>> is_prime(521)
    True
    """
    def helper(k):
        if k == n:
            return True
        elif n % k == 0:
            return False
        else:
            return helper(k + 1)
    return helper(2)
