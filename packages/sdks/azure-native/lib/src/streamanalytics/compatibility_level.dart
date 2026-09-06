import 'package:pulumi/pulumi.dart' as pulumi;

/// Controls certain runtime behaviors of the streaming job.
enum CompatibilityLevel implements pulumi.PulumiEnum<String> {
  value10("1.0"),
  value12("1.2");

  const CompatibilityLevel(this.wireValue);
  @override
  final String wireValue;

  static CompatibilityLevel fromValue(String value) {
    for (final item in CompatibilityLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompatibilityLevel value: $value');
  }
}
