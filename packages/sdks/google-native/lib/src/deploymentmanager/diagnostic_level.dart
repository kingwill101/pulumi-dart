/// Level to record this diagnostic.
enum DiagnosticLevel {
  unknown("UNKNOWN"),
  information("INFORMATION"),
  warning("WARNING"),
  error("ERROR");

  const DiagnosticLevel(this.wireValue);
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
