import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Distinguishes between sentinel MIN/MAX versions and normal versions.
enum VersionKind implements pulumi.PulumiEnum<String> {
  versionKindUnspecified("VERSION_KIND_UNSPECIFIED"),
  normal("NORMAL"),
  minimum("MINIMUM"),
  maximum("MAXIMUM");

  const VersionKind(this.wireValue);
  @override
  final String wireValue;

  static VersionKind fromValue(String value) {
    for (final item in VersionKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersionKind value: $value');
  }
}
