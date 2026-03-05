/// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
enum InstancePropertiesKeyRevocationActionTypeComputeV1 {
  keyRevocationActionTypeUnspecified("KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  none("NONE"),
  stop("STOP");

  const InstancePropertiesKeyRevocationActionTypeComputeV1(this.wireValue);
  final String wireValue;

  static InstancePropertiesKeyRevocationActionTypeComputeV1 fromValue(String value) {
    for (final item in InstancePropertiesKeyRevocationActionTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstancePropertiesKeyRevocationActionTypeComputeV1 value: $value');
  }
}

