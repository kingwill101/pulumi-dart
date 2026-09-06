import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the spark config properties file.
enum ConfigurationType implements pulumi.PulumiEnum<String> {
  valueFile("File"),
  valueArtifact("Artifact");

  const ConfigurationType(this.wireValue);
  @override
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
