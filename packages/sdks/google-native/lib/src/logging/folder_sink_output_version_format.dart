import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated. This field is unused.
enum FolderSinkOutputVersionFormat implements pulumi.PulumiEnum<String> {
  versionFormatUnspecified("VERSION_FORMAT_UNSPECIFIED"),
  v2("V2"),
  v1("V1");

  const FolderSinkOutputVersionFormat(this.wireValue);
  @override
  final String wireValue;

  static FolderSinkOutputVersionFormat fromValue(String value) {
    for (final item in FolderSinkOutputVersionFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FolderSinkOutputVersionFormat value: $value');
  }
}
