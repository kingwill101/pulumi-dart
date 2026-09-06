import 'package:pulumi/pulumi.dart' as pulumi;

/// The target type.
enum JobTargetType implements pulumi.PulumiEnum<String> {
  valueTargetGroup("TargetGroup"),
  valueSqlDatabase("SqlDatabase"),
  valueSqlElasticPool("SqlElasticPool"),
  valueSqlShardMap("SqlShardMap"),
  valueSqlServer("SqlServer");

  const JobTargetType(this.wireValue);
  @override
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
