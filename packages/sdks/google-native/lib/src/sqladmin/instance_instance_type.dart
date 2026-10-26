import 'package:pulumi/pulumi.dart' as pulumi;

/// The instance type.
enum InstanceInstanceType implements pulumi.PulumiEnum<String> {
  sqlInstanceTypeUnspecified("SQL_INSTANCE_TYPE_UNSPECIFIED"),
  cloudSqlInstance("CLOUD_SQL_INSTANCE"),
  onPremisesInstance("ON_PREMISES_INSTANCE"),
  readReplicaInstance("READ_REPLICA_INSTANCE");

  const InstanceInstanceType(this.wireValue);
  @override
  final String wireValue;

  static InstanceInstanceType fromValue(String value) {
    for (final item in InstanceInstanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceInstanceType value: $value');
  }
}
