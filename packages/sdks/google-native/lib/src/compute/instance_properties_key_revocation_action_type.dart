import 'package:pulumi/pulumi.dart' as pulumi;

/// KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default value is "NONE" if it is not specified.
enum InstancePropertiesKeyRevocationActionType implements pulumi.PulumiEnum<String> {
  keyRevocationActionTypeUnspecified("KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED"),
  none("NONE"),
  stop("STOP");

  const InstancePropertiesKeyRevocationActionType(this.wireValue);
  @override
  final String wireValue;

  static InstancePropertiesKeyRevocationActionType fromValue(String value) {
    for (final item in InstancePropertiesKeyRevocationActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstancePropertiesKeyRevocationActionType value: $value');
  }
}
