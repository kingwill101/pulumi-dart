/// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
enum VmwareEnginePreferencesCommitmentPlanMigrationcenterV1alpha1 {
  commitmentPlanUnspecified("COMMITMENT_PLAN_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  commitment1YearMonthlyPayments("COMMITMENT_1_YEAR_MONTHLY_PAYMENTS"),
  commitment3YearMonthlyPayments("COMMITMENT_3_YEAR_MONTHLY_PAYMENTS"),
  commitment1YearUpfrontPayment("COMMITMENT_1_YEAR_UPFRONT_PAYMENT"),
  commitment3YearUpfrontPayment("COMMITMENT_3_YEAR_UPFRONT_PAYMENT");

  const VmwareEnginePreferencesCommitmentPlanMigrationcenterV1alpha1(this.wireValue);
  final String wireValue;

  static VmwareEnginePreferencesCommitmentPlanMigrationcenterV1alpha1 fromValue(String value) {
    for (final item in VmwareEnginePreferencesCommitmentPlanMigrationcenterV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VmwareEnginePreferencesCommitmentPlanMigrationcenterV1alpha1 value: $value');
  }
}
