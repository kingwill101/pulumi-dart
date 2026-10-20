import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
enum CompensationEntryUnit implements pulumi.PulumiEnum<String> {
  compensationUnitUnspecified("COMPENSATION_UNIT_UNSPECIFIED"),
  hourly("HOURLY"),
  daily("DAILY"),
  weekly("WEEKLY"),
  monthly("MONTHLY"),
  yearly("YEARLY"),
  oneTime("ONE_TIME"),
  otherCompensationUnit("OTHER_COMPENSATION_UNIT");

  const CompensationEntryUnit(this.wireValue);
  @override
  final String wireValue;

  static CompensationEntryUnit fromValue(String value) {
    for (final item in CompensationEntryUnit.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompensationEntryUnit value: $value');
  }
}
