Incremental Bound -> property testing

A `superset` of these algorithms.
It is evident `its not so evident`. 
`engineering problems` -> problems arising in 

% (Background: Modelling - Take for example the knapsack problem)

Beginning 
Start with real world situation and then use the hashcode problem as a particularly usefull situation 
(why is this work important, mention that before starting talking about the hashcode)

This is a real world situation.
These are the hashcode problems.
We Tipically use Meta-Heuristics to solve them.
Its a great oportunity to study them in these circumnstances and develop generic modelling approaches.
No one cares about modelling but I do. So I am going to prove that this is actually a relevant topic.
The community does not believe it but I shall be the profet.

Success Criteria
We are able to model problems using this framework
We solve the problems, get good results and see that this framework is usefull in the competition context
We are able to test meta-heuristics and see if one of these stands out in the croud. Across the range of problems

Objectives:
A. Model problems (using a principled approach)
B. Test Meta-Heuristics (develop algorithms under this approach)
C. Obtain quality results and investigate the advantages and disadvantages of the
   approach.

Contribuition:
A. Use the Hash Code problems and solve them in a principled manner
   - Contributing with good examples on `how to model` that go beyond the the classical benchmark problems.
   - Develop the modelling framework to better fit the users needs (side quest)
   - Develop the modelling framework to better integrate local search strategies (side quest) 
B. Develop Meta-Heuristic solvers and small utilities
   - Contribute with example algorithms and solvers that show that it is (side quest)
     possible to develop solvers and models independently (abiding to the same
     framework)
   - 
C. Gather results that allow us to see if some algorithms are better than 
   others and if our approach is competitive in practice. (and in runtime)

% Filipe Araujo
% resources -> (internet access)
% simple knapsack -> (Acho que um exemplo (de um modelo ou da negligencia da
%  		      comunidade relativamente a estes aspetos?) ajudaria a
%  		      clarificar a explicação nesta primeira secção de motivação)

% Explain the model a lil bit more.
%

# Experiments

## Problem A

## Problem B

# Chapter 1

- For example, for example,.... (paragraph 1)

Finally, in a competition setting were a time
ramework pode ser importante num competition context

The principled modelling framework proposed, drawing inspiration from the
mathematical modelling, involves creating a specification of the computational
model, describing the problem's properties, that a computer can subsequently
input into a generic meta-heuristic solver, implemented following the model
specification to generate solutions.

\Cref{fig:problem-solving} illustrates the sequence of steps for the modelling
approach proposed in the framework highlighting the clear separation between the
model and solver in the problem-solving effort.

\begin{figure}[h]
  \centering
  \includegraphics[width=\textwidth,keepaspectratio]{../assets/modelling/modelling.pdf}
  \caption{Modelling and Problem Solving}
  \label{fig:problem-solving}
\end{figure}

* possibly due to skepticism about its feasibility and effectiveness


This is visible in the abundance of meta-heuristic optimization software that
provides specific frameworks for implementing
evolutionary~(\eg{}~\textquote{Paradiseo},~\textquote{Pymoo} and
~\textquote{DEAP}), local search~(\eg{}~\textquote{EasyLocal++} and
~\textquote{HOTFRAME}) and constructive
search~(\eg{}~\textquote{Bob++},~\textquote{MDF},~\textquote{MALLABA})
meta-heuristics, and the lack of a unifying framework supporting all approaches.


## Intermediate Report Jury Notes

In reality, the literature describes various frameworks for developing
meta-heuristics that cover different aspects. For instance, there are frameworks for evolutionary, genetic, particle, and swarm meta-heuristics such as "ParadisEO", "Pymoo" and "DEAP". Additionally, frameworks like EasyLocal++ and HOTFRAME focus on local search meta-heuristics. Furthermore, constructive search meta-heuristics are supported by frameworks like MALLABA, MDF, and Bob++.

### 1
T: The Hash Code programming competition is an yearly event held by Google
where teams are asked to solve complex and challenging engineering prob-
lems using any tools and programming languages of their choice in four hours
available.

J: Internet access is allowed?

### 2
T: It is worth noting that the modelling aspect in this field has often been
neglected by the community, which has been primarily focused on the development
of meta-heuristics algorithms (solvers).

J: An example would be nice here.

## Alexandre

# 1

T: feasible solutions

J: Pode levantar a questão sobre o que é "feasible". Se ficar só solutions na introdução não me parece mal porque assume-se que queremos soluções válidas. Depois no background descreves o que é feasible para o resto do documento.


# Chapter 3

2016 Final - Covering, Assignment, Simulation -> 2016 Final - OK
2017 Qualification - Assignment, Knapsack ->  2017 Qualification - OK
2017 Final - Covering, Cable Trench Problem (?) ->  2017 Final - Deixava só Covering (o custo ótimo do backbone dada a localização dos routers, é o Steiner Tree Problem que possivelmente vale a pena mencionar?)
2018 Qualification - Assignment, Simulation, Vehicle Routing (with Time Windows) -> 2018 Qualification - OK
2018 Final - Packing (2D Packing?), Covering  -> 2018 Final - OK (deixava só Packing)
2019 Qualification - Scheduling (Ordering), Satisfiability? -> 2019 Qualification - Deixava só Scheduling (Single-resource scheduling se quiseres ser mais preciso). Assumo que por SAT queiras dizer a constraint de 2 verticais, mas isso é simplesmente uma constraint na construção da solução não é SAT. Eventualmente poderia fazer sentido mencionar algo como Grouping no sentido que os grupos é que interessam, se bem que grouping problems costumam implicar sets disjuntos o que não é verdade aqui (mas diria que encaixa na mesma).
2019 Final - Scheduling, Assignment ->  2019 Final - Tipicamente problemas de Scheduling já pressupõem assignment (é sempre preciso dizer em que máquina vão ser feitos a menos que seja single-resource). Para além disso nota que a compilação de um ficheiro pode ser feita em mais do que 1 servidor (até aparece no exemplo) e tipicamente em assignment isto não é verdade (em scheduling também não é comum mas pronto). Por isto talvez deixasse apenas Scheduling aqui.
2020 Qualification - Scheduling, Knapsack, Assignment, Covering ->  2020 Qualification - OK
2020 Final - Assignment Scheduling -> 2020 Final - OK

2021 Qualification - Simulation -> 2021 Qualification - OK. Eventualmente fará sentido ter também algo relacionado com o tempo de cada semáforo, que será algo na perspetiva de Control Optimization, uma pesquisa rápida no scholar até chama a este tipo de problemas Signal Timing ou Traffic Signal Timing.

2021 Final - Scheduling, Assignment
2022 Qualification - Assignemnt, Scheduling
2022 Final - TSP Like (Vehicle Routing ?)


2021 Final - Scheduling ok, assignment não sei se vale a pena estar aqui.
2022 Qualification - Se calhar metia Scheduling e Simulation. Simulation no sentido que é preciso ir atualizando os skills das pessoas. Mas eventualmente pode só ficar Scheduling. Assignment não me parece relevante.
2022 Final - VRP parece-me bem. Diria que há aqui mais qualquer coisa relacionada com as mudanças de aceleração, talvez na ótica de Control Optimization. 

Coverage on 2020 book scanning?
Simulation in 2022?

# Random Thoughts

* Olhar para um problema e decompor nas suas partes consituintes é uma
ferramenta interessante para a construção  de bounds. visto que construir
bounds é quase uma arte. O conhecimento de certos problemas considerados
"textbook" e bastante estudados mesmo até ao nivel de construção de bounds,
estratégias que resultam melhor, etc... pode sugerir um bound mais
interessante para um problema que combine varios destes problemas "textbook".
Mesmo sendo de uma forma imprevisivel ou, pelo menos, um bocado exotica. 

* Destes problemas todos a gente selecionou dois que achamos ser um ponto de
começo interessante para a tentativa de modelação.

* Hashcode problem Interesting from a theorectical standpoint but also
approachable from a practical perspective

* If we have so few instances why not generate more. We can do that because
problems are described thoroughly in the problem statement but it was not our
main objective to do that.  Our main objective was to try and model google
Google Hash Code problems and then try to implement some meta-heuristics to solve those
problems. That is a thing that we left as an open possibility and as future work.

* There are still VRP, Simulation and Packing problems which we did not modeled. Thats future work.

# Quotes

+ Chapter (Introduction) 1: .

+ Chapter  (Background) 2: ''. --- Isaac Newton.

+ Chapter (Google Hash Code Competition) 3: "understanding a question is half an answer". --- Socrates, Essential Thinkers.

"Theory will take you only so far". J. Robert Oppenheimer 

+ Chapter (Conclusion) 7': We can only see a short distance ahead, but we can see plenty there that needs to be done.' -- Alan Turing.

% -> Maybe talk about constructive and local search approaches employed by
% meta-heuristics
% -> Talk about mathematical optimization example in the background
% -> Recommendation given by the jury (give an example)