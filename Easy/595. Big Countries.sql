select w.name, w.population, w.area
FROM World w
where w.area >= 3000000 or 
w.population >= 25000000
