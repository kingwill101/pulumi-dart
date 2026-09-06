import 'package:pulumi/pulumi.dart' as pulumi;

enum AutoBackupDaysOfWeek implements pulumi.PulumiEnum<String> {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday");

  const AutoBackupDaysOfWeek(this.wireValue);
  @override
  final String wireValue;

  static AutoBackupDaysOfWeek fromValue(String value) {
    for (final item in AutoBackupDaysOfWeek.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoBackupDaysOfWeek value: $value');
  }
}
