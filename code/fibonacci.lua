fibs = { 1, 1 }
setmetatable(fibs, {
	__index = function(values, n)
	values[n] = values[n - 1] + values[n - 2] -- Calculate and memorize fibs[n].
	return values[n]
end
})

print("Posição 6: ", fibs[6])
print("Posição 200: ", fibs[200])
