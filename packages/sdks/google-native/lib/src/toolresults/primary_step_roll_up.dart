import 'package:pulumi/pulumi.dart' as pulumi;

/// Rollup test status of multiple steps that were run with the same configuration as a group.
enum PrimaryStepRollUp implements pulumi.PulumiEnum<String> {
  unset("unset"),
  success("success"),
  failure("failure"),
  inconclusive("inconclusive"),
  skipped("skipped"),
  flaky("flaky");

  const PrimaryStepRollUp(this.wireValue);
  @override
  final String wireValue;

  static PrimaryStepRollUp fromValue(String value) {
    for (final item in PrimaryStepRollUp.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrimaryStepRollUp value: $value');
  }
}
