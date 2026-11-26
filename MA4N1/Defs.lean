import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Data.Nat.Factorization.Defs
import Mathlib.Data.Set.Card
import Mathlib.Data.Nat.Prime.Defs

/-!
# Definitions

Definitions required to state Sylow's Theorems.

All definitions are specialized to finite groups.
-/

namespace Sylow

assert_not_exists Sylow

/-- For a group `G` and a prime `p`, the value of `|G|_p` -/
noncomputable def maxPDivisor
  (p : ℕ)
  (hp : Nat.Prime p)
  (G : Type*) [Finite G] [Group G] : ℕ :=
  p ^ ((Nat.card G).factorization p)



/-- For `p` prime, a `p`-subgroup of a group `G` is a subgroup of order `p^n` for some `n` -/
structure PSubgroup
  (p : ℕ)
  (hp : Nat.Prime p)
  (G : Type*) [Finite G] [Group G] extends Subgroup G where
  /-- The subgroup's order is a power of `p` -/
  pOrder : ∃ (n : ℕ), Nat.card carrier = p^n

instance
  (G : Type*) [Group G] [Finite G]
  {p : ℕ}
  (hp : Nat.Prime p)
  : CoeSort (PSubgroup p hp G) (Subgroup G) where
  coe H := H.toSubgroup



/-- For `p` prime, a Sylow `p`-subgroup of a group `G` is a subgroup of order `maxPDivisor p G` -/
structure SylowPSubgroup
  (p : ℕ)
  (hp : Nat.Prime p)
  (G : Type*) [Finite G] [Group G] extends PSubgroup p hp G where
  /-- The subgroup's order is the maximal power of `p` dividing `G` -/
  maximal_pOrder : Nat.card carrier = maxPDivisor p hp G

instance
  (G : Type*) [Group G] [Finite G]
  {p : ℕ}
  (hp : Nat.Prime p)
  : CoeSort (SylowPSubgroup p hp G) (Subgroup G) where
  coe P := P.toSubgroup



/-- For a group `G` and a prime `p`, `syl p G` is the set of all Sylow `p`-subgroups of `G` -/
def syl
  (p : ℕ)
  (hp : Nat.Prime p)
  (G : Type*) [Finite G] [Group G] :
  Set (SylowPSubgroup p hp G) :=  Set.univ


end Sylow
