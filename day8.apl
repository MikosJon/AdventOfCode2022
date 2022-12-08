#!/usr/bin/dyalogscript
input ← ⍎¨↑⊃⎕NGET'day8.in'1

visible ← {
    ⍺ ← ¯1, ⊂⍬
    ⍬≡⍵: 2⊃⍺
    idx ← 1+⊃⍺≥(⊃⍵)
    acc ← idx⊃((⊃⍵),⊂(2⊃⍺),1) ((⊃⍺),⊂(2⊃⍺),0)
    acc∇1↓⍵
}

to_edge ← {
    matrix ← ⍵
    {matrix[⍵[1];⍵[2]+⍳(⊃⍴matrix)-⍵[2]]}¨⍳⍴matrix
}

score ← {
    ⍬≡⍵: 2⊃⍺
    (⊃⍺)≤⊃⍵: 1+2⊃⍺
    acc ← ⍺[1], 1+⍺[2]
    acc∇1↓⍵
}

bottom ← ⍉⌽↑visible¨↓⌽⍉input
left ← ↑visible¨↓input
right ← ⌽↑visible¨↓⌽input
top ← ⍉↑visible¨↓⍉input
⎕ ← +⌿+⌿top∨bottom∨left∨right

bottom_trees ← ⍉to_edge⍉input
left_trees ← ⌽to_edge⌽input
right_trees ← to_edge input
top_trees ← ⍉⌽to_edge⌽⍉input
bottom_score ← {input[⍵[1];⍵[2]] 0 score⊃bottom_trees[⍵[1];⍵[2]]}¨⍳⍴input
top_score ← {input[⍵[1];⍵[2]] 0 score⊃top_trees[⍵[1];⍵[2]]}¨⍳⍴input
left_score ← {input[⍵[1];⍵[2]] 0 score⊃left_trees[⍵[1];⍵[2]]}¨⍳⍴input
right_score ← {input[⍵[1];⍵[2]] 0 score⊃right_trees[⍵[1];⍵[2]]}¨⍳⍴input
⎕ ← ⌈⌿⌈⌿bottom_score×top_score×left_score×right_score