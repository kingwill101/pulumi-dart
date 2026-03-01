/// Managed pipeline mode.
enum ManagedPipelineMode {
  valueIntegrated("Integrated"),
  valueClassic("Classic");

  const ManagedPipelineMode(this.value);
  final String value;

  static ManagedPipelineMode fromValue(String value) {
    for (final item in ManagedPipelineMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedPipelineMode value: $value');
  }
}

