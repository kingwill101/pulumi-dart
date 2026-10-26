import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The database instance type. On creation only USER_DATABASE is allowed, which is also the default when omitted.
enum InstanceType implements pulumi.PulumiEnum<String> {
  databaseInstanceTypeUnspecified("DATABASE_INSTANCE_TYPE_UNSPECIFIED"),
  defaultDatabase("DEFAULT_DATABASE"),
  userDatabase("USER_DATABASE");

  const InstanceType(this.wireValue);
  @override
  final String wireValue;

  static InstanceType fromValue(String value) {
    for (final item in InstanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceType value: $value');
  }
}
