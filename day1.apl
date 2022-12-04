#!/usr/bin/dyalogscript
rows ← ⊃⎕NGET'day1.in'1

⎕ ← ⌈/+/↑⍎¨¨{⍵⊆⍨(⊂'')≢¨⍵}rows
⎕ ← +/3↑{⍵[⍒⍵]}+/↑⍎¨¨{⍵⊆⍨(⊂'')≢¨⍵}rows