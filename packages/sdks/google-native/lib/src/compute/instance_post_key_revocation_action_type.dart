/// PostKeyRevocationActionType of the instance.
enum InstancePostKeyRevocationActionType {
  noop("NOOP"),
  postKeyRevocationActionTypeUnspecified("POST_KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  shutdown("SHUTDOWN");

  const InstancePostKeyRevocationActionType(this.value);
  final String value;

  static InstancePostKeyRevocationActionType fromValue(String value) {
    for (final item in InstancePostKeyRevocationActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstancePostKeyRevocationActionType value: $value');
  }
}

