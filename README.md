# COS 516 Homework 4 - Reasoning about programs with Dafny
## Working on Gitpod (Recommended)
We have setup a working environment on Gitpod, and you can access it [here](https://gitpod.io/#https://github.com/AD1024/mul2-maximum).
Gitpod grants free access for 50 hours per month (if you are new users, it is 60 hours for the first month). This should be a reasonably sufficient time for completing the two problems.

## Working on Courselab or locally
### Setting up environment
If you are working with VSCode.
- Download DotNet runtime; find your own distribution at [https://dotnet.microsoft.com/en-us/download/dotnet/6.0](https://dotnet.microsoft.com/en-us/download/dotnet/6.0). Tips: you may use `wget` on Courselab to download the file after it gives you the direct link.
- Unpack the downloaded file. Here we denote your path to the unpacked directory as `DOTNET_PATH`.
- run `export PATH="$(PATH):<DOTNET_PATH>"`, where `DOTNET_PATH` should be the path to your DotNet files. 
- Install Dafny extention on your VSCode and start working on the files.

If you are not using VSCode, find your distribution of Dafny at [https://github.com/dafny-lang/dafny/releases/tag/v3.4.0](https://github.com/dafny-lang/dafny/releases/tag/v3.4.0). Unpacking the files will give you a folder that contains an executable named `dafny`. You may check the files by running `dafny <path-to-dfy-file>`. 

## Problems

### 1. Multiply2
As stated in the hw4.pdf, the function `Multiply2` takes an integer `n` and returns `r`. In this problem, we want to prove, by adding loop invariants, that `r = 2 * n`.

Complete `Multiply2.dfy` so that the Dafny gives you a `Verified` result on the VSCode status bar and the linter does not give you errors. You only need some loop invariants to finish the proof and please do not change pre/post-conditions. 
### 2. Maximum
In `Maximum.dfy`, a function `Maximum` aims to find the maximum value in an array of integers. 

The function contains a little bug you need to fix first. After fixing it, annotate the loop with some invariants to help Dafny verifies the function. 

## General tips
1. Dafny usually can automatically provide the guard for loop termination, but when it doesn't, note that you need an invariant showing that some loop counters are decreasing over iterations. 
2. Think about how the invariants builds up the proof over each iteration: the invariant after the last iteration (exiting the loop) should somehow imply the postconditions. 