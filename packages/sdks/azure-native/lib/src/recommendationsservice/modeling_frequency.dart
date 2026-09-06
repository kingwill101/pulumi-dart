import 'package:pulumi/pulumi.dart' as pulumi;

/// Modeling frequency controls the modeling compute frequency.
enum ModelingFrequency implements pulumi.PulumiEnum<String> {
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const ModelingFrequency(this.wireValue);
  @override
  final String wireValue;

  static ModelingFrequency fromValue(String value) {
    for (final item in ModelingFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelingFrequency value: $value');
  }
}
