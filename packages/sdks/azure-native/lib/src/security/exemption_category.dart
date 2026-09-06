import 'package:pulumi/pulumi.dart' as pulumi;

/// Exemption category of this assignment
enum ExemptionCategory implements pulumi.PulumiEnum<String> {
  waiver("waiver"),
  mitigated("mitigated");

  const ExemptionCategory(this.wireValue);
  @override
  final String wireValue;

  static ExemptionCategory fromValue(String value) {
    for (final item in ExemptionCategory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExemptionCategory value: $value');
  }
}
