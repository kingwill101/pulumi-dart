import 'package:pulumi/pulumi.dart' as pulumi;

/// PostKeyRevocationActionType of the instance.
enum InstancePropertiesPostKeyRevocationActionType implements pulumi.PulumiEnum<String> {
  noop("NOOP"),
  postKeyRevocationActionTypeUnspecified("POST_KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  shutdown("SHUTDOWN");

  const InstancePropertiesPostKeyRevocationActionType(this.wireValue);
  @override
  final String wireValue;

  static InstancePropertiesPostKeyRevocationActionType fromValue(String value) {
    for (final item in InstancePropertiesPostKeyRevocationActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstancePropertiesPostKeyRevocationActionType value: $value');
  }
}
