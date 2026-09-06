import 'package:pulumi/pulumi.dart' as pulumi;

/// The quota policy.
enum QuotaPolicy implements pulumi.PulumiEnum<String> {
  default_("Default"),
  none("None"),
  restricted("Restricted");

  const QuotaPolicy(this.wireValue);
  @override
  final String wireValue;

  static QuotaPolicy fromValue(String value) {
    for (final item in QuotaPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QuotaPolicy value: $value');
  }
}
