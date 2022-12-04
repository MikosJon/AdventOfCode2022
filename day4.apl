#!/usr/bin/dyalogscript
⎕IO ← 0

compare ← {
    first ← '-'(≠⊆⊢)⊃⍵
    second ← '-'(≠⊆⊢)1⊃⍵
    a ← ⍎⊃first
    b ← ⍎1⊃first
    c ← ⍎⊃second
    d ← ⍎1⊃second

    ((a ≥ c) ∧ (b ≤ d)) ∨ ((c ≥ a) ∧ (d ≤ b))
}

compare2 ← {
    first ← '-'(≠⊆⊢)⊃⍵
    second ← '-'(≠⊆⊢)1⊃⍵
    a ← ⍎⊃first
    b ← ⍎1⊃first
    c ← ⍎⊃second
    d ← ⍎1⊃second

    c>b : 0
    a>d : 0
    1
}

input ← ⊃⎕NGET'day4.in'1
⎕ ← +⌿compare¨','(≠⊆⊢)¨input
⎕ ← +⌿compare2¨','(≠⊆⊢)¨input