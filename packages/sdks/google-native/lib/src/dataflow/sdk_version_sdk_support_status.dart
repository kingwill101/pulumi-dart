import 'package:pulumi/pulumi.dart' as pulumi;

/// The support status for this SDK version.
enum SdkVersionSdkSupportStatus implements pulumi.PulumiEnum<String> {
  unknown("UNKNOWN"),
  supported("SUPPORTED"),
  stale("STALE"),
  deprecated("DEPRECATED"),
  unsupported("UNSUPPORTED");

  const SdkVersionSdkSupportStatus(this.wireValue);
  @override
  final String wireValue;

  static SdkVersionSdkSupportStatus fromValue(String value) {
    for (final item in SdkVersionSdkSupportStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SdkVersionSdkSupportStatus value: $value');
  }
}
