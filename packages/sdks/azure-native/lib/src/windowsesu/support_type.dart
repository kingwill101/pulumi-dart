import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of support
enum SupportType implements pulumi.PulumiEnum<String> {
  valueSupplementalServicing("SupplementalServicing"),
  valuePremiumAssurance("PremiumAssurance");

  const SupportType(this.wireValue);
  @override
  final String wireValue;

  static SupportType fromValue(String value) {
    for (final item in SupportType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportType value: $value');
  }
}
