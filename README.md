# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## 

## Summary

### This lab technically had 3 parts- The first being the basic concept of parallel switching as opposed to series switching, allowing for either one of two inputs to allow for one single output. This was the upstairs/downstairs light switch.

### The second and third part of the lab were creating adder circuits, and understanding the binary process behind them. When two binary numbers are added, the sum must be separated from the carry- with the sum taking the same significance as the input values, and the carry value being one bit more significant. We first implemented a single, standalone adder that was not set up to be combined with others. After that, we made a module that could function as a "series" adder, and combined any number of times to accommodate adding any number of bits. We only combined 2 of these adders in the lab, although a simple copy, paste, and new instantiation statement would be all we need to add another bit. 



## Lab Questions

### 1 - How might you add more than two bits together?

#### To add more than two bits together, we simply would implement another instance of the full adder, with the carry out of the second adder connected to the C in of the third. We could string this together to combine any number n of bits, each carry out of the n-1th adder connected to the carry in of the nth adder.

### 2 - What is the importance of the XOR gate in an adder?

#### The XOR gate is responsible for the sum output of the adder. It completely ignores the carry bit, and will only affect the sum output. The carry bit, which is either spit out as a separate output, or fed into the next adder in the series, is computed by the AND function inside the adder.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?

#### A two bit adder can handle an integer up to 3- anything beyond that cannot be passed into it. Since each individual adder has two inputs (not counting a c input, which only comes into play with multiple adders strung together), a two bit adder can't handle anything beyond a binary input of 11. If you tried to pass anything larger, say a binary number 100, the adder would ignore the most significant bit and read it as 00, since it has no way to process a third bit. For that, you need multiple adders strung together.

