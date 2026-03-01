/// The name of the SKU. Ex - F0, P0. It is typically a letter+number code
enum OnlineExperimentationWorkspaceSkuName {
  f0("F0"),
  s0("S0"),
  p0("P0"),
  d0("D0");

  const OnlineExperimentationWorkspaceSkuName(this.value);
  final String value;

  static OnlineExperimentationWorkspaceSkuName fromValue(String value) {
    for (final item in OnlineExperimentationWorkspaceSkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnlineExperimentationWorkspaceSkuName value: $value');
  }
}

