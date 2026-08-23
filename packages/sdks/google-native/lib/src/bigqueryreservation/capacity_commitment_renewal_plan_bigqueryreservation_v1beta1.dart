/// The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL commitments.
enum CapacityCommitmentRenewalPlanBigqueryreservationV1beta1 {
  commitmentPlanUnspecified("COMMITMENT_PLAN_UNSPECIFIED"),
  flex("FLEX"),
  trial("TRIAL"),
  monthly("MONTHLY"),
  annual("ANNUAL");

  const CapacityCommitmentRenewalPlanBigqueryreservationV1beta1(this.wireValue);
  final String wireValue;

  static CapacityCommitmentRenewalPlanBigqueryreservationV1beta1 fromValue(String value) {
    for (final item in CapacityCommitmentRenewalPlanBigqueryreservationV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacityCommitmentRenewalPlanBigqueryreservationV1beta1 value: $value');
  }
}
