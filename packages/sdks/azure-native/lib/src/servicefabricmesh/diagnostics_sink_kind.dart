/// The kind of DiagnosticsSink.
enum DiagnosticsSinkKind {
  valueInvalid("Invalid"),
  valueAzureInternalMonitoringPipeline("AzureInternalMonitoringPipeline");

  const DiagnosticsSinkKind(this.value);
  final String value;

  static DiagnosticsSinkKind fromValue(String value) {
    for (final item in DiagnosticsSinkKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiagnosticsSinkKind value: $value');
  }
}

