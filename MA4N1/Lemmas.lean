import MA4N1.Defs
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Subgroup.Map
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.GroupTheory.GroupAction.Basic
import Mathlib.Data.Nat.Factorization.Defs
import Mathlib.Data.Set.Card
import Mathlib.Data.Nat.Prime.Defs
/-!
# Lemma

Lemmas required to prove Sylow's Theorems.
-/
namespace Sylow
assert_not_exists Sylow

theorem proposition_2_18_i
    (G X : Type*) [Group G] [MulAction G X] :
    ∀ x : X, MulAction.stabilizer G x ≤ ⊤ := by
    sorry

theorem proposition_2_18_ii
    (G X : Type*) [Group G] [MulAction G X] :
    (⨅ x: X, MulAction.stabilizer G x) = (MulAction.toPermHom G X).ker := by
    sorry


theorem theorem_2_19
    (G X : Type*) [Finite G] [Group G] [MulAction G X]
    (x : X) :
    Nat.card G = Nat.card (MulAction.orbit G x) * Nat.card (MulAction.stabilizer G x) := by
    sorry


theorem corollary_2_22_i
    (G X : Type*) [Finite G] [Group G] [MulAction G X]
    (x y : X) :
    (MulAction.orbit G x = MulAction.orbit G y) ∨ Disjoint (MulAction.orbit G x) (MulAction.orbit G y) := by
    sorry


theorem corollary_2_22_ii
    (G X : Type*) [Finite G] [Group G] [MulAction G X] :
    (⋃ x : X, MulAction.orbit G x) = Set.univ := by
    sorry

theorem corollary_2_22_iii
    (G X : Type*) [Finite G] [Group G] [MulAction G X]
    (x : X) :
    Nat.card (MulAction.orbit G x) ∣ Nat.card G := by
    sorry

theorem lemma_3_4_i
    (p : Nat.Primes) :
    ∀ i : ℕ, (1 ≤ i ∧  i≤ (p : ℕ) - 1 ) → ((p : ℕ) ∣ Nat.choose (p : ℕ) i) := by
    sorry

theorem lemma_3_4_ii
    (p : Nat.Primes)
    (n m : ℕ)
    (hcop : Nat.Coprime m p) :
    Nat.ModEq (p : ℕ)
        (Nat.choose ((p : ℕ)^n * m) ((p : ℕ)^n)) m := by
    sorry

/- For a finite group `G`, a subgoup `H`, and a Sylow-p subgroup of `G`, we find that for some `g∈G` we have `H∩gP⋆{-1}->hb-/
theorem proposition_3_6
    (p : Nat.Primes)
    (G : Type*) [Finite G] [Group G]
    (H : Subgroup G)
    (P : SylowPSubgroup p G) :
    ∃ g : G, ∃ Q : SylowPSubgroup p H,
        Q.toPSubgroup.toSubgroup =
            Subgroup.comap H.subtype
                (Subgroup.map (MulAut.conj g).toMonoidHom P.toPSubgroup.toSubgroup) := by
    sorry

end Sylow
