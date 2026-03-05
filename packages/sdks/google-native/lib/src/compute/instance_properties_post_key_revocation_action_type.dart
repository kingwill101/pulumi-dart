/// PostKeyRevocationActionType of the instance.
enum InstancePropertiesPostKeyRevocationActionType {
  noop("NOOP"),
  postKeyRevocationActionTypeUnspecified("POST_KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  shutdown("SHUTDOWN");

  const InstancePropertiesPostKeyRevocationActionType(this.wireValue);
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

