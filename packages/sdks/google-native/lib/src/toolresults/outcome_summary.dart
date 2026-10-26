import 'package:pulumi/pulumi.dart' as pulumi;

/// The simplest way to interpret a result. Required
enum OutcomeSummary implements pulumi.PulumiEnum<String> {
  unset("unset"),
  success("success"),
  failure("failure"),
  inconclusive("inconclusive"),
  skipped("skipped"),
  flaky("flaky");

  const OutcomeSummary(this.wireValue);
  @override
  final String wireValue;

  static OutcomeSummary fromValue(String value) {
    for (final item in OutcomeSummary.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutcomeSummary value: $value');
  }
}
