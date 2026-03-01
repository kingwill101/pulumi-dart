/// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
enum InstanceKeyRevocationActionTypeComputeBeta {
  keyRevocationActionTypeUnspecified("KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  none("NONE"),
  stop("STOP");

  const InstanceKeyRevocationActionTypeComputeBeta(this.value);
  final String value;

  static InstanceKeyRevocationActionTypeComputeBeta fromValue(String value) {
    for (final item in InstanceKeyRevocationActionTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceKeyRevocationActionTypeComputeBeta value: $value');
  }
}

