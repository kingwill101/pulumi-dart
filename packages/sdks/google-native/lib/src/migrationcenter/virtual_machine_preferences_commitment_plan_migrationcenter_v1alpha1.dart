import 'package:pulumi/pulumi.dart' as pulumi;

/// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
enum VirtualMachinePreferencesCommitmentPlanMigrationcenterV1alpha1 implements pulumi.PulumiEnum<String> {
  commitmentPlanUnspecified("COMMITMENT_PLAN_UNSPECIFIED"),
  commitmentPlanNone("COMMITMENT_PLAN_NONE"),
  commitmentPlanOneYear("COMMITMENT_PLAN_ONE_YEAR"),
  commitmentPlanThreeYears("COMMITMENT_PLAN_THREE_YEARS");

  const VirtualMachinePreferencesCommitmentPlanMigrationcenterV1alpha1(this.wireValue);
  @override
  final String wireValue;

  static VirtualMachinePreferencesCommitmentPlanMigrationcenterV1alpha1 fromValue(String value) {
    for (final item in VirtualMachinePreferencesCommitmentPlanMigrationcenterV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachinePreferencesCommitmentPlanMigrationcenterV1alpha1 value: $value');
  }
}
