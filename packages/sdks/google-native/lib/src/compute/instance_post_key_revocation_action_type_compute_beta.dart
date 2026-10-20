import 'package:pulumi/pulumi.dart' as pulumi;

/// PostKeyRevocationActionType of the instance.
enum InstancePostKeyRevocationActionTypeComputeBeta implements pulumi.PulumiEnum<String> {
  noop("NOOP"),
  postKeyRevocationActionTypeUnspecified("POST_KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  shutdown("SHUTDOWN");

  const InstancePostKeyRevocationActionTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static InstancePostKeyRevocationActionTypeComputeBeta fromValue(String value) {
    for (final item in InstancePostKeyRevocationActionTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstancePostKeyRevocationActionTypeComputeBeta value: $value');
  }
}
