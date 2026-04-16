# Lab-4-16-2026

# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item            | Description                                       | Value |
| --------------- | ------------------------------------------------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25%   |
| Question 1      | Your answers to the question                      | 25%   |
| Question 2      | Your answers to the question                      | 25%   |
| Question 3      | Your answers to the question                      | 25%   |

## Name

Jack Elliot, Mark Moorefield

## Summary

In this lab we were asked to implement a state machine using both binary encoding and one hot encoding.

## Lab Questions

### Compare and contrast One Hot and Binary encodings

When it come to one hot encoding we use a new binary columns for every catergory (inputs, outputs, and the states). For binary encoding we convert all the columns to integers and convert them to binary.

### Which method did your team find easier, and why?

For us we found one hot to be a lot easier to implement. Even though the steps are almost the exact same, we found it a lot easier to get the different next states for A B C D and E. This also might have been because we did binary first, and for each of the next states it required a few lines of code to pass all of the tests. For one hot all you had to do is type the different states with the input you need and it would pass the tests just fine. In fact for us we had to go back and fidgit with the bianry next states a lot since it kept failing the tests, but it passed all the one hot tests on the first try.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.

If you have more resources than you can use either, due to our experiences we figured that one hot would be the way to go, but if you don't have a lot of resources then you should use the binary implementation since it uses less resources to implement and you don't have to create a new binary representation of each state like one hot.
