/// The managed application deployment mode.
enum DeploymentMode {
  valueNotSpecified("NotSpecified"),
  valueIncremental("Incremental"),
  valueComplete("Complete");

  const DeploymentMode(this.wireValue);
  final String wireValue;

  static DeploymentMode fromValue(String value) {
    for (final item in DeploymentMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentMode value: $value');
  }
}

