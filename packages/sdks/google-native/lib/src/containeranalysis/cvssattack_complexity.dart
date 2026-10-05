import 'package:pulumi/pulumi.dart' as pulumi;

enum CVSSAttackComplexity implements pulumi.PulumiEnum<String> {
  attackComplexityUnspecified("ATTACK_COMPLEXITY_UNSPECIFIED"),
  attackComplexityLow("ATTACK_COMPLEXITY_LOW"),
  attackComplexityHigh("ATTACK_COMPLEXITY_HIGH"),
  attackComplexityMedium("ATTACK_COMPLEXITY_MEDIUM");

  const CVSSAttackComplexity(this.wireValue);
  @override
  final String wireValue;

  static CVSSAttackComplexity fromValue(String value) {
    for (final item in CVSSAttackComplexity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAttackComplexity value: $value');
  }
}
