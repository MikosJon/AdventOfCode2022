#!/usr/bin/dyalogscript
input ← ⊃⎕NGET'day9.in'1
moves ← {⍵[1],⍎⊃⍵[2]}¨' '(≠⊆⊢)¨input

move ← {
    idx ← 'URDL'⍳⊃⍵[1]
    change ← idx⊃(0 1)(1 0)(0 ¯1)(¯1 0)
    _ ← (⍵[2]) {⍺=0:⍬ ⋄ _ ← update ⍵ ⋄ (⍺-1)∇⍵} change
}
update ← {
    h +← ⍵
    t +← {2∊|⍵: ×⍵ ⋄ 0 0} h-t
    seen ∪← ⊂t
    ⍬
}
h ← 0 0
t ← 0 0
seen ← ⊂0 0
move¨moves
⎕ ← ≢seen

move2 ← {
    idx ← 'URDL'⍳⊃⍵[1]
    change ← idx⊃(0 1)(1 0)(0 ¯1)(¯1 0)
    _ ← (⍵[2]) {⍺=0:⍬ ⋄ _ ← update2 ⍵ ⋄ (⍺-1)∇⍵} change
}
update2 ← {
    knots[1 2] +← ⍵
    knots[3 4] +← {2∊|⍵: ×⍵ ⋄ 0 0} knots[1 2]-knots[3 4]
    knots[5 6] +← {2∊|⍵: ×⍵ ⋄ 0 0} knots[3 4]-knots[5 6]
    knots[7 8] +← {2∊|⍵: ×⍵ ⋄ 0 0} knots[5 6]-knots[7 8]
    knots[9 10] +← {2∊|⍵: ×⍵ ⋄ 0 0} knots[7 8]-knots[9 10]
    knots[11 12] +← {2∊|⍵: ×⍵ ⋄ 0 0} knots[9 10]-knots[11 12]
    knots[13 14] +← {2∊|⍵: ×⍵ ⋄ 0 0} knots[11 12]-knots[13 14]
    knots[15 16] +← {2∊|⍵: ×⍵ ⋄ 0 0} knots[13 14]-knots[15 16]
    knots[17 18] +← {2∊|⍵: ×⍵ ⋄ 0 0} knots[15 16]-knots[17 18]
    knots[19 20] +← {2∊|⍵: ×⍵ ⋄ 0 0} knots[17 18]-knots[19 20]
    seen ∪← ⊂knots[19 20]
    ⍬
}
knots ← 0×⍳20
seen ← ⊂0 0
move2¨moves
⎕ ← ≢seen