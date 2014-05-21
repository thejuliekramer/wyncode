def countdown(num = 10)
	sleep(0.1)
	countdown == ? "Happy New Year" : countdown(10 += 1)
end

countdown