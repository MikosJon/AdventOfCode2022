#!/usr/bin/dyalogscript
score1 ← {
    index ← 'A X' 'A Y' 'A Z' 'B X' 'B Y' 'B Z' 'C X' 'C Y' 'C Z'⍳⊂⍵
    scores ← 4 8 3 1 5 9 7 2 6
    scores[index]
}

score2 ← {
    index ← 'A X' 'A Y' 'A Z' 'B X' 'B Y' 'B Z' 'C X' 'C Y' 'C Z'⍳⊂⍵
    scores ← 3 4 8 1 5 9 2 6 7
    scores[index]
}

data ← ⎕NGET'day2.in'1
⎕ ← +⌿score1¨⊃data
⎕ ← +⌿score2¨⊃data