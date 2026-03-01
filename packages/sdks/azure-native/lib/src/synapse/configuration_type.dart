/// The type of the spark config properties file.
enum ConfigurationType {
  valueFile("File"),
  valueArtifact("Artifact");

  const ConfigurationType(this.value);
  final String value;

  static ConfigurationType fromValue(String value) {
    for (final item in ConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigurationType value: $value');
  }
}

