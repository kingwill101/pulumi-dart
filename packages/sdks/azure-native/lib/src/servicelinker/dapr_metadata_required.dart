import 'package:pulumi/pulumi.dart' as pulumi;

/// The value indicating whether the metadata is required or not
enum DaprMetadataRequired implements pulumi.PulumiEnum<String> {
  valueTrue("true"),
  valueFalse("false");

  const DaprMetadataRequired(this.wireValue);
  @override
  final String wireValue;

  static DaprMetadataRequired fromValue(String value) {
    for (final item in DaprMetadataRequired.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DaprMetadataRequired value: $value');
  }
}
