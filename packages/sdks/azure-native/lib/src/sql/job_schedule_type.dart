import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule interval type
enum JobScheduleType implements pulumi.PulumiEnum<String> {
  valueOnce("Once"),
  valueRecurring("Recurring");

  const JobScheduleType(this.wireValue);
  @override
  final String wireValue;

  static JobScheduleType fromValue(String value) {
    for (final item in JobScheduleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobScheduleType value: $value');
  }
}
