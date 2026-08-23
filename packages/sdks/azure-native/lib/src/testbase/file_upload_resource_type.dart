/// Resource type for file uploading.
enum FileUploadResourceType {
  valuePackage("Package"),
  valueVHD("VHD");

  const FileUploadResourceType(this.wireValue);
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
