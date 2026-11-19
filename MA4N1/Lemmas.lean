import MA4N1.Defs
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Subgroup.Map
import Mathlib.Data.Nat.Factorization.Defs
import Mathlib.Data.Set.Card
import Mathlib.Data.Nat.Prime.Defs
/-!
# Lemma

Lemmas required to prove Sylow's Theorems.
-/
namespace Sylow
assert_not_exists Sylow

/- For a finite group `G`, a subgoup `H`, and a Sylow-p subgroup of `G`, we find that for some `g∈G` we have `H∩gP⋆{-1}->hb-/
theorem lemma_3_1
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
