/// The type of the spark config properties file.
enum ConfigurationType {
  valueFile("File"),
  valueArtifact("Artifact");

  const ConfigurationType(this.wireValue);
  final String wireValue;

  static ConfigurationType fromValue(String value) {
    for (final item in ConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigurationType value: $value');
  }
}
