import 'package:pulumi/pulumi.dart' as pulumi;

/// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
enum InstancePropertiesKeyRevocationActionTypeComputeBeta implements pulumi.PulumiEnum<String> {
  keyRevocationActionTypeUnspecified("KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  none("NONE"),
  stop("STOP");

  const InstancePropertiesKeyRevocationActionTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static InstancePropertiesKeyRevocationActionTypeComputeBeta fromValue(String value) {
    for (final item in InstancePropertiesKeyRevocationActionTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstancePropertiesKeyRevocationActionTypeComputeBeta value: $value');
  }
}
