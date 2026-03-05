/// The target type.
enum JobTargetType {
  valueTargetGroup("TargetGroup"),
  valueSqlDatabase("SqlDatabase"),
  valueSqlElasticPool("SqlElasticPool"),
  valueSqlShardMap("SqlShardMap"),
  valueSqlServer("SqlServer");

  const JobTargetType(this.wireValue);
  final String wireValue;

  static JobTargetType fromValue(String value) {
    for (final item in JobTargetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobTargetType value: $value');
  }
}

