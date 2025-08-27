# DiscreteChoice_RandomUtilityModel
Implementing a Discrete Choice Random Utility Model (DC-RUM). The idea is to model how people choose among different alternatives when given a set of options.

Suppose you have 𝑁 products or items (e.g., 𝐴 , 𝐵 , 𝐶). From these, you can form 2^ (𝑁) − 1 choice subsets (all possible subsets - empty set). 

For each choice set, you are given data p_obs : the probability that x is chosen from set D

There are N! possible orderings of preferences (permutations). If n = 5 then 5! = 120 possible rankings
The model says that the probabilities we see in the data come from a mix of different fixed decision rules. 
Each rule has a weight (a number between 0 and 1) that shows how important it is, and all the weights together must add up to 1. ( sum \lambda = 1)

This function attempts to find the optimal weights   by solving a least-squares problem. 
In other words, we look for the mix of preference rankings that comes as close as possible to explaining the actual choices people made. 

Why don't we stop at p_obs if we know the probability of choosing A, B, C? 

p+obs is the raw, empirical probabilities observed from the data. It does not offer insight into why an individual would chose that way. It just tells you the raw percentages of people choosing each option in the sets you observed whether those choices are consistent with rational behavior. The DC-RUM model takes those observed probabilities and tries to explain them with a fixed preference ranking. The solve_rum_projection() function assign weights to those rankings. (e.g. 40% prefer B > A > C, 35% prefer C > A > B, etc.).
