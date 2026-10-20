import 'package:pulumi/pulumi.dart' as pulumi;

/// PostKeyRevocationActionType of the instance.
enum InstancePostKeyRevocationActionType implements pulumi.PulumiEnum<String> {
  noop("NOOP"),
  postKeyRevocationActionTypeUnspecified("POST_KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  shutdown("SHUTDOWN");

  const InstancePostKeyRevocationActionType(this.wireValue);
  @override
  final String wireValue;

  static InstancePostKeyRevocationActionType fromValue(String value) {
    for (final item in InstancePostKeyRevocationActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstancePostKeyRevocationActionType value: $value');
  }
}
