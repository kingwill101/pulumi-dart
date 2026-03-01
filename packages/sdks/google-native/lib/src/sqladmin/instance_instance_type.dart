/// The instance type.
enum InstanceInstanceType {
  sqlInstanceTypeUnspecified("SQL_INSTANCE_TYPE_UNSPECIFIED"),
  cloudSqlInstance("CLOUD_SQL_INSTANCE"),
  onPremisesInstance("ON_PREMISES_INSTANCE"),
  readReplicaInstance("READ_REPLICA_INSTANCE");

  const InstanceInstanceType(this.value);
  final String value;

  static InstanceInstanceType fromValue(String value) {
    for (final item in InstanceInstanceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceInstanceType value: $value');
  }
}

