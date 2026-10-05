import 'package:pulumi/pulumi.dart' as pulumi;

/// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to SERVING.
enum VersionServingStatus implements pulumi.PulumiEnum<String> {
  servingStatusUnspecified("SERVING_STATUS_UNSPECIFIED"),
  serving("SERVING"),
  stopped("STOPPED");

  const VersionServingStatus(this.wireValue);
  @override
  final String wireValue;

  static VersionServingStatus fromValue(String value) {
    for (final item in VersionServingStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersionServingStatus value: $value');
  }
}
