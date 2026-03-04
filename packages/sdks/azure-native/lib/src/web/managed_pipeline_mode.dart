/// Managed pipeline mode.
enum ManagedPipelineMode {
  valueIntegrated("Integrated"),
  valueClassic("Classic");

  const ManagedPipelineMode(this.wireValue);
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
