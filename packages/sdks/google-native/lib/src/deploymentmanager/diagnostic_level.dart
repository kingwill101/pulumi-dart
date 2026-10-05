import 'package:pulumi/pulumi.dart' as pulumi;

/// Level to record this diagnostic.
enum DiagnosticLevel implements pulumi.PulumiEnum<String> {
  unknown("UNKNOWN"),
  information("INFORMATION"),
  warning("WARNING"),
  error("ERROR");

  const DiagnosticLevel(this.wireValue);
  @override
  final String wireValue;

  static DiagnosticLevel fromValue(String value) {
    for (final item in DiagnosticLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiagnosticLevel value: $value');
  }
}
