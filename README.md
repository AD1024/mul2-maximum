# COS 516 Homework 4 - Reasoning about programs with Dafny
## Multiply2
As stated in the hw4.pdf, the function `Multiply2` takes an integer `n` and returns `r`. In this problem, we want to prove, by adding loop invariants, that `r = 2 * n`.

Complete `Multiply2.dfy` so that the Dafny gives you a `Verified!` result on the VSCode status bar. The you only need some loop invariants to finish the proof and please do not change pre/post-conditions. 
## Maximum
In `Maximum.dfy`, a function `Maximum` aims to find the maximum value in an array of integers. 

## Gentle tips
1. Dafny usually can automatically provide the guard for loop termination, but when it doesn't, note that you need an invariant showing that some loop counters are decreasing over iterations. 
2. Think about how the invariants builds up the proof over each iteration: the invariant after the last iteration (exiting the loop) should somehow imply the postconditions. 