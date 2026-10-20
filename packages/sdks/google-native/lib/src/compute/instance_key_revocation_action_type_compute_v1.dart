import 'package:pulumi/pulumi.dart' as pulumi;

/// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
enum InstanceKeyRevocationActionTypeComputeV1 implements pulumi.PulumiEnum<String> {
  keyRevocationActionTypeUnspecified("KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  none("NONE"),
  stop("STOP");

  const InstanceKeyRevocationActionTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static InstanceKeyRevocationActionTypeComputeV1 fromValue(String value) {
    for (final item in InstanceKeyRevocationActionTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceKeyRevocationActionTypeComputeV1 value: $value');
  }
}
