/// The kind of DiagnosticsSink.
enum DiagnosticsSinkKind {
  valueInvalid("Invalid"),
  valueAzureInternalMonitoringPipeline("AzureInternalMonitoringPipeline");

  const DiagnosticsSinkKind(this.wireValue);
  final String wireValue;

  static DiagnosticsSinkKind fromValue(String value) {
    for (final item in DiagnosticsSinkKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiagnosticsSinkKind value: $value');
  }
}

