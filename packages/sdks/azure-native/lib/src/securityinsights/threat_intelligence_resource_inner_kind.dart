import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of the entity.
enum ThreatIntelligenceResourceInnerKind implements pulumi.PulumiEnum<String> {
  valueIndicator("indicator");

  const ThreatIntelligenceResourceInnerKind(this.wireValue);
  @override
  final String wireValue;

  static ThreatIntelligenceResourceInnerKind fromValue(String value) {
    for (final item in ThreatIntelligenceResourceInnerKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ThreatIntelligenceResourceInnerKind value: $value');
  }
}
