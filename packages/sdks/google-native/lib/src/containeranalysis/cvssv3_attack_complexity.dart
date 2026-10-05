import 'package:pulumi/pulumi.dart' as pulumi;

enum CVSSv3AttackComplexity implements pulumi.PulumiEnum<String> {
  attackComplexityUnspecified("ATTACK_COMPLEXITY_UNSPECIFIED"),
  attackComplexityLow("ATTACK_COMPLEXITY_LOW"),
  attackComplexityHigh("ATTACK_COMPLEXITY_HIGH");

  const CVSSv3AttackComplexity(this.wireValue);
  @override
  final String wireValue;

  static CVSSv3AttackComplexity fromValue(String value) {
    for (final item in CVSSv3AttackComplexity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3AttackComplexity value: $value');
  }
}
