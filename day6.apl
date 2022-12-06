#!/usr/bin/dyalogscript
input ← ⊃⊃⎕NGET'day6.in'1
⎕IO ← 1

⎕ ← 3+1⍳⍨⊃,⌿{4=⍴∪input[1+⍵-⍳4]}¨3+⍳3-⍨⍴input
⎕ ← 13+1⍳⍨⊃,⌿{14=⍴∪input[1+⍵-⍳14]}¨13+⍳13-⍨⍴input