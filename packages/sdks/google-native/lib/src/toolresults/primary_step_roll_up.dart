/// Rollup test status of multiple steps that were run with the same configuration as a group.
enum PrimaryStepRollUp {
  unset("unset"),
  success("success"),
  failure("failure"),
  inconclusive("inconclusive"),
  skipped("skipped"),
  flaky("flaky");

  const PrimaryStepRollUp(this.wireValue);
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

