def beam_search(problem: Problem, timer: Timer, bw: int) -> Solution:
  solution = problem.empty_solution()
  best = solution if solution.feasible() else None
  bobj = solution.objective() if solution.feasible() else None 
  beam = [(solution.upper_bound(), solution)]
  while not timer.finished():
    cs = []
    for ub, s in beam:
      for c in s.add_moves():
        cs.append((ub + s.upper_bound_increment_add(c), s, c))
    if not len(cs):
      break
    cs.sort(reverse=True, key=lambda x: x[0])
    beam = []
    for ub, s, c in cs[:bw]:
      s = s.copy()
      s.add(c)
      if s.feasible():
        obj = s.objective()
        if bobj is None or obj > bobj:
          best, bobj = s, obj
      beam.append((ub, s))
  return best