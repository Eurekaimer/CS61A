def delay(arg):
	print('delayed')
	def g():
		return arg
	return g

delay(delay)()(6)()

print(delay(delay)()(6)())