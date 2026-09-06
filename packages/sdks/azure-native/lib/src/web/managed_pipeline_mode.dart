import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed pipeline mode.
enum ManagedPipelineMode implements pulumi.PulumiEnum<String> {
  valueIntegrated("Integrated"),
  valueClassic("Classic");

  const ManagedPipelineMode(this.wireValue);
  @override
  final String wireValue;

  static ManagedPipelineMode fromValue(String value) {
    for (final item in ManagedPipelineMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedPipelineMode value: $value');
  }
}
