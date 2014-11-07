require "rational"

def multiply(n1, d1, n2, d2)
	nn = n1*n2
	nd = d1*d2
	simplify(nn, nd)
end

def simplify(n1, d1)
	gcd = n1.gcd(d1)
	nn = n1/gcd
	nd = d1/gcd
	[nn, nd]
end
	
def add(n1, d1, n2, d2)
	n2 = n2 * d1
	n1 = n1 * d2
	nn = n1 + n2 
	nd = d1 * d2
	simplify(nn, nd)
end

def subtract(n1, d1, n2, d2)
	n2 = n2 * d1
	n1 = n1 * d2
	nn = n1 - n2
	nd = d1 * d2
	simplify(nn, nd)
	[nn, nd]
end


def divide(n1, d1, n2, d2)
	nn = n1 * d2
	nd = n2 * d1
	[nn, nd]
end

if __FILE__ == $0
n, d = add(2, 4, 1, 2)
	puts n.to_s + "/" + d.to_s
end
