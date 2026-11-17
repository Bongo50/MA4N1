import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Data.Nat.Factorization.Defs
import Mathlib.Data.Set.Card

/-!
# Definitions

Definitions required to state Sylow's Theorems
-/

namespace Sylow

assert_not_exists Sylow

/-- For a group `G`, the value of `|G|_p` -/
def maxPDivisor (p : ℕ) (G : Type*) [Fintype G] [Group G] : ℕ :=
  p ^ ((Fintype.card G).factorization p)

/-- A `p`-subgroup of a group `G` is a subgroup of order `p^n` for some `n` -/
structure PSubgroup (p : ℕ) (G : Type*) [Fintype G] [Group G] extends Subgroup G where
  /-- The subgroup's order is a power of `p` -/
  pOrder : ∃ (n : ℕ), carrier.ncard = p^n

/-- A Sylow `p`-subgroup of a group `G` is a subgroup of order `maxPDivisor p G` -/
structure SylowPSubgroup (p : ℕ) (G : Type*) [Fintype G] [Group G] extends PSubgroup p G where
  /-- The subgroup's order is the maximal power of `p` dividing `G` -/
  maximal_pOrder : carrier.ncard = maxPDivisor p G

/-- For a group `G`, `syl G` is the set of all Sylow `p`-subgroups of `G` -/
def syl (p : ℕ) (G : Type*) [Fintype G] [Group G] : Set (SylowPSubgroup p G) :=
  {P | P : SylowPSubgroup p G}

end Sylow
