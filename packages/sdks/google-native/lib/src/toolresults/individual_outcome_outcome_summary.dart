import 'package:pulumi/pulumi.dart' as pulumi;

enum IndividualOutcomeOutcomeSummary implements pulumi.PulumiEnum<String> {
  unset("unset"),
  success("success"),
  failure("failure"),
  inconclusive("inconclusive"),
  skipped("skipped"),
  flaky("flaky");

  const IndividualOutcomeOutcomeSummary(this.wireValue);
  @override
  final String wireValue;

  static IndividualOutcomeOutcomeSummary fromValue(String value) {
    for (final item in IndividualOutcomeOutcomeSummary.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndividualOutcomeOutcomeSummary value: $value');
  }
}
