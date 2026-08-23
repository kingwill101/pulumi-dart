/// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
enum SoleTenancyPreferencesCommitmentPlanMigrationcenterV1alpha1 {
  commitmentPlanUnspecified("COMMITMENT_PLAN_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  commitment1Year("COMMITMENT_1_YEAR"),
  commitment3Year("COMMITMENT_3_YEAR");

  const SoleTenancyPreferencesCommitmentPlanMigrationcenterV1alpha1(this.wireValue);
  final String wireValue;

  static SoleTenancyPreferencesCommitmentPlanMigrationcenterV1alpha1 fromValue(String value) {
    for (final item in SoleTenancyPreferencesCommitmentPlanMigrationcenterV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoleTenancyPreferencesCommitmentPlanMigrationcenterV1alpha1 value: $value');
  }
}
