import 'package:pulumi/pulumi.dart' as pulumi;

/// Capacity commitment commitment plan.
enum CapacityCommitmentPlanBigqueryreservationV1beta1 implements pulumi.PulumiEnum<String> {
  commitmentPlanUnspecified("COMMITMENT_PLAN_UNSPECIFIED"),
  flex("FLEX"),
  trial("TRIAL"),
  monthly("MONTHLY"),
  annual("ANNUAL");

  const CapacityCommitmentPlanBigqueryreservationV1beta1(this.wireValue);
  @override
  final String wireValue;

  static CapacityCommitmentPlanBigqueryreservationV1beta1 fromValue(String value) {
    for (final item in CapacityCommitmentPlanBigqueryreservationV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacityCommitmentPlanBigqueryreservationV1beta1 value: $value');
  }
}
