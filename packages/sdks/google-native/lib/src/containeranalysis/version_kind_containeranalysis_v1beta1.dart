import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Distinguishes between sentinel MIN/MAX versions and normal versions.
enum VersionKindContaineranalysisV1beta1 implements pulumi.PulumiEnum<String> {
  versionKindUnspecified("VERSION_KIND_UNSPECIFIED"),
  normal("NORMAL"),
  minimum("MINIMUM"),
  maximum("MAXIMUM");

  const VersionKindContaineranalysisV1beta1(this.wireValue);
  @override
  final String wireValue;

  static VersionKindContaineranalysisV1beta1 fromValue(String value) {
    for (final item in VersionKindContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersionKindContaineranalysisV1beta1 value: $value');
  }
}
