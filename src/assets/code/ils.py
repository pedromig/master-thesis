def ils(solution: Solution, timer: Timer, ks: int) -> Solution:
  best = solution.copy()
  bobj = best.objective()
  while not timer.finished():
    for m in solution.random_local_moves_wor():
      increment = solution.objective_increment_local(m)
      if increment > 0:
        solution.step(m)
        break
      if timer.finished():
        if solution.objective() > bobj:
          return solution
        else:
          return best
    else:
      if solution.objective() >= bobj:
        best = solution.copy()
        bobj = solution.objective() 
      else:
        solution = best.copy()
      solution.perturb(ks)
  if solution.objective() > bobj:
    return solution
  else:
    return best