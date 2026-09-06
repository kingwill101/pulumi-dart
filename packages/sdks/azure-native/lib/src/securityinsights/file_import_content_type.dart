import 'package:pulumi/pulumi.dart' as pulumi;

/// The content type of this file.
enum FileImportContentType implements pulumi.PulumiEnum<String> {
  valueBasicIndicator("BasicIndicator"),
  valueStixIndicator("StixIndicator"),
  valueUnspecified("Unspecified");

  const FileImportContentType(this.wireValue);
  @override
  final String wireValue;

  static FileImportContentType fromValue(String value) {
    for (final item in FileImportContentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileImportContentType value: $value');
  }
}
