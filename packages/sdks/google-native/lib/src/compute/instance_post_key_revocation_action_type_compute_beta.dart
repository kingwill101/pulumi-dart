/// PostKeyRevocationActionType of the instance.
enum InstancePostKeyRevocationActionTypeComputeBeta {
  noop("NOOP"),
  postKeyRevocationActionTypeUnspecified("POST_KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  shutdown("SHUTDOWN");

  const InstancePostKeyRevocationActionTypeComputeBeta(this.wireValue);
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
