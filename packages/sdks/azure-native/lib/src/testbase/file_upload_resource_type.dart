import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource type for file uploading.
enum FileUploadResourceType implements pulumi.PulumiEnum<String> {
  valuePackage("Package"),
  valueVHD("VHD");

  const FileUploadResourceType(this.wireValue);
  @override
  final String wireValue;

  static FileUploadResourceType fromValue(String value) {
    for (final item in FileUploadResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileUploadResourceType value: $value');
  }
}
