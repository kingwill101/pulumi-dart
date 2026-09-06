import 'package:pulumi/pulumi.dart' as pulumi;

/// Selection of how the threshold should be evaluated.
enum ValidationThresholdType implements pulumi.PulumiEnum<String> {
  valueCountSuccess("CountSuccess"),
  valuePercentSuccess("PercentSuccess");

  const ValidationThresholdType(this.wireValue);
  @override
  final String wireValue;

  static ValidationThresholdType fromValue(String value) {
    for (final item in ValidationThresholdType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationThresholdType value: $value');
  }
}
