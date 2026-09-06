import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the type of the job. Valid modes are `Cloud` and 'Edge'.
enum JobType implements pulumi.PulumiEnum<String> {
  valueCloud("Cloud"),
  valueEdge("Edge");

  const JobType(this.wireValue);
  @override
  final String wireValue;

  static JobType fromValue(String value) {
    for (final item in JobType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobType value: $value');
  }
}
