def measure(n=1, &block)
	init = Time.now
	n.times { block.call }
	(Time.now - init) / n.round(1)
end
