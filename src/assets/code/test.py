def objective_increment_add_test(self: Problem) -> Solution:
  solution = self.empty_solution()
  c = solution.random_add_move()
  while c is not None: 
    before = solution.objective()
    increment = solution.objective_increment_add(c)   
    solution.add(c)
    assert before + increment == solution.objective()
    c = solution.random_add_move()
  return solution