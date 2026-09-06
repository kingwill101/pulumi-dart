import 'package:pulumi/pulumi.dart' as pulumi;

/// The load distribution policy for this rule.
enum LoadDistribution implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valueSourceIP("SourceIP"),
  valueSourceIPProtocol("SourceIPProtocol");

  const LoadDistribution(this.wireValue);
  @override
  final String wireValue;

  static LoadDistribution fromValue(String value) {
    for (final item in LoadDistribution.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadDistribution value: $value');
  }
}
