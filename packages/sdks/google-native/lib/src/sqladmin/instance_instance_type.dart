/// The instance type.
enum InstanceInstanceType {
  sqlInstanceTypeUnspecified("SQL_INSTANCE_TYPE_UNSPECIFIED"),
  cloudSqlInstance("CLOUD_SQL_INSTANCE"),
  onPremisesInstance("ON_PREMISES_INSTANCE"),
  readReplicaInstance("READ_REPLICA_INSTANCE");

  const InstanceInstanceType(this.wireValue);
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
