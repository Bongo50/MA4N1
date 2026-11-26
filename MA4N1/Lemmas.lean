import MA4N1.Defs
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Subgroup.Map
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.GroupTheory.GroupAction.Basic
import Mathlib.GroupTheory.QuotientGroup.Basic
import Mathlib.Data.Nat.Factorization.Defs
import Mathlib.Data.Set.Card
import Mathlib.Data.Nat.Prime.Defs
/-!
# Lemma

Lemmas required to prove Sylow's Theorems.
-/
namespace Sylow
assert_not_exists Sylow

/- Proposition 2.16 i) in the MA3K4 notes-/
theorem action_quotient_isomorphic_to_range
    (G X : Type*) [Group G] [MulAction G X] :
    Nonempty (
    G ⧸ (MulAction.toPermHom G X).ker ≃* (MulAction.toPermHom G X).range) := by
    sorry

/- Proposition 2.16 i) in the MA3K4 notes, finiteness result-/
theorem action_index_dvd_factorial
    (G X : Type*) [Group G] [MulAction G X] [Finite X] :
    Nat.card (G ⧸ (MulAction.toPermHom G X).ker) ∣ Nat.factorial (Nat.card X) := by
    sorry

/- Proposition 2.16 ii) in the MA3K4 notes-/
theorem action_kernel_normal
    (G X : Type*) [Group G] [MulAction G X] :
    (MulAction.toPermHom G X).ker.Normal := by
    sorry

/- Proposition 2.18 i) in the MA3K4 notes-/
theorem stabiliser_is_subgroup
    (G X : Type*) [Group G] [MulAction G X] :
    ∀ x : X, MulAction.stabilizer G x ≤ ⊤ := by
    sorry

/- Proposition 2.18 ii) in the MA3K4 notes-/
theorem intersection_stabilisers_eq_ker_toPermHom
    (G X : Type*) [Group G] [MulAction G X] :
    (⨅ x: X, MulAction.stabilizer G x) = (MulAction.toPermHom G X).ker := by
    sorry

/- Theorem 2.19 in the MA3K4 notes-/
theorem orbit_stabiliser
    (G X : Type*) [Finite G] [Group G] [MulAction G X]
    (x : X) :
    Nat.card G = Nat.card (MulAction.orbit G x) * Nat.card (MulAction.stabilizer G x) := by
    sorry

/- Corollary 2.22 i) in the MA3K4 notes-/
theorem orbit_eq_or_disjoint
    (G X : Type*) [Finite G] [Group G] [MulAction G X]
    (x y : X) :
    (MulAction.orbit G x = MulAction.orbit G y) ∨ Disjoint (MulAction.orbit G x) (MulAction.orbit G y) := by
    sorry

/- Corollary 2.22 ii) in the MA3K4 notes-/
theorem union_orbit_eq_group
    (G X : Type*) [Finite G] [Group G] [MulAction G X] :
    (⋃ x : X, MulAction.orbit G x) = Set.univ := by
    sorry

/- Corollary 2.22 iii) in the MA3K4 notes-/
theorem card_orbit_dvd_card_group
    (G X : Type*) [Finite G] [Group G] [MulAction G X]
    (x : X) :
    Nat.card (MulAction.orbit G x) ∣ Nat.card G := by
    sorry

/- Lemma 3.4 i) in the MA3K4 notes-/
theorem prime_dvd_choose_of_lt
    (p : ℕ)
    (hp : Nat.Prime p) :
    ∀ i : ℕ, (1 ≤ i ∧  i≤ (p : ℕ) - 1 ) → ((p : ℕ) ∣ Nat.choose (p : ℕ) i) := by
    sorry

/- Lemma 3.4 ii) in the MA3K4 notes-/
theorem choose_prime_pow_mul_modEq
    (n m p : ℕ)
    (hp : Nat.Prime p)
    (hcop : Nat.Coprime m p) :
    Nat.ModEq (p : ℕ)
        (Nat.choose ((p : ℕ)^n * m) ((p : ℕ)^n)) m := by
    sorry

/- For a finite group `G`, a subgoup `H`, and a Sylow `p`-subgroup of `G`, we find that for some `g∈G` we have `H∩gPg^{-1}` is a Sylow `p`-subgroup of `H`-/
theorem exists_sylow_subgroup_eq_comap_conj
    (p : ℕ)
    (hp : Nat.Prime p)
    (G : Type*) [Finite G] [Group G]
    (H : Subgroup G)
    (P : SylowPSubgroup p hp G) :
    ∃ g : G, ∃ Q : SylowPSubgroup p hp H,
        Q.toPSubgroup.toSubgroup =
            Subgroup.comap H.subtype
                (Subgroup.map (MulAut.conj g).toMonoidHom P.toPSubgroup.toSubgroup) := by
    sorry

end Sylow
