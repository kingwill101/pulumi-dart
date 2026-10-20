import 'package:pulumi/pulumi.dart' as pulumi;

enum CVSSv3AvailabilityImpact implements pulumi.PulumiEnum<String> {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE");

  const CVSSv3AvailabilityImpact(this.wireValue);
  @override
  final String wireValue;

  static CVSSv3AvailabilityImpact fromValue(String value) {
    for (final item in CVSSv3AvailabilityImpact.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3AvailabilityImpact value: $value');
  }
}
