import 'package:pulumi/pulumi.dart' as pulumi;

/// The cloud that the standard is supported on.
enum StandardSupportedCloud implements pulumi.PulumiEnum<String> {
  azure("Azure"),
  aWS("AWS"),
  gCP("GCP");

  const StandardSupportedCloud(this.wireValue);
  @override
  final String wireValue;

  static StandardSupportedCloud fromValue(String value) {
    for (final item in StandardSupportedCloud.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StandardSupportedCloud value: $value');
  }
}
