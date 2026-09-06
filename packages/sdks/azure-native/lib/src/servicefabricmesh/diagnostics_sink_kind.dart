import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of DiagnosticsSink.
enum DiagnosticsSinkKind implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueAzureInternalMonitoringPipeline("AzureInternalMonitoringPipeline");

  const DiagnosticsSinkKind(this.wireValue);
  @override
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
