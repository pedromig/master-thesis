def heuristic_construction(problem: Problem) -> Solution:
  solution = problem.empty_solution()
  c = solution.heuristic_add_move()
  while c is not None:
    solution.add(c)
    c = solution.heuristic_add_move()
  return solution