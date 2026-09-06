import 'package:pulumi/pulumi.dart' as pulumi;

/// The cloud that the standard is supported on.
enum StandardSupportedClouds implements pulumi.PulumiEnum<String> {
  aWS("AWS"),
  gCP("GCP");

  const StandardSupportedClouds(this.wireValue);
  @override
  final String wireValue;

  static StandardSupportedClouds fromValue(String value) {
    for (final item in StandardSupportedClouds.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StandardSupportedClouds value: $value');
  }
}
