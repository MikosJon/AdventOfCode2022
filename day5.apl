#!/usr/bin/dyalogscript
input ← ⊃⎕NGET'day5.in'1

move1 ← {
    instruction ← ⍎¨⍵
    letters ← instruction[1]↑⊃state[instruction[2]]
    state[instruction[2]] ← ⊂instruction[1]↓⊃state[instruction[2]]
    state[instruction[3]] ← ⊂(⌽letters),⊃state[instruction[3]]
}

move2 ← {
    instruction ← ⍎¨⍵
    letters ← instruction[1]↑⊃state[instruction[2]]
    state[instruction[2]] ← ⊂instruction[1]↓⊃state[instruction[2]]
    state[instruction[3]] ← ⊂letters,⊃state[instruction[3]]
}

instructions←2⊃(~(⊂'')⍷input)⊆input

state←{⊃⍵⊆⍨~' '⍷⍵}¨↓⍉↑{⍵[2+4×1-⍨⍳(1+⍴⍵)÷4]}¨⌽1↓⌽⊃(~(⊂'')⍷input)⊆input
move1¨{⍵[2 4 6]}¨' '(≠⊆⊢)¨instructions
⎕ ← 1⌷⍉↑state

state←{⊃⍵⊆⍨~' '⍷⍵}¨↓⍉↑{⍵[2+4×1-⍨⍳(1+⍴⍵)÷4]}¨⌽1↓⌽⊃(~(⊂'')⍷input)⊆input
move2¨{⍵[2 4 6]}¨' '(≠⊆⊢)¨instructions
⎕ ← 1⌷⍉↑state