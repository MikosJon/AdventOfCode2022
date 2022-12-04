#!/usr/bin/dyalogscript
⎕IO ← 1
alphabet ← 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
input ← ⊃⎕NGET'day3.in'1

⎕ ← +⌿alphabet⍳⊃¨((2÷⍨⍴)(↑∩↓)⊢)¨input
⎕ ← +⌿alphabet⍳⊃¨∩/((3,⍨(3÷⍨⍴))⍴⊢)input