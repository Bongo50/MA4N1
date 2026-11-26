import MA4N1.Lemmas

/-!
# Sylow's Third Theorem

Sylow's Third Theorem
-/
namespace Sylow
assert_not_exists Sylow

theorem sylow_three
  (G : Type*) [Group G] [Finite G]
  (p : ℕ)
  (hp : Nat.Prime p)
  (H : PSubgroup p hp G) :
  ∃ (P : SylowPSubgroup p hp G), ((H : Subgroup G) ≤ (P : Subgroup G)) := by
    sorry
    done

end Sylow
