import 'package:pulumi/pulumi.dart' as pulumi;

enum CVSSConfidentialityImpact implements pulumi.PulumiEnum<String> {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSConfidentialityImpact(this.wireValue);
  @override
  final String wireValue;

  static CVSSConfidentialityImpact fromValue(String value) {
    for (final item in CVSSConfidentialityImpact.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSConfidentialityImpact value: $value');
  }
}
