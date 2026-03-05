/// Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
enum CompensationEntryUnitJobsV4 {
  compensationUnitUnspecified("COMPENSATION_UNIT_UNSPECIFIED"),
  hourly("HOURLY"),
  daily("DAILY"),
  weekly("WEEKLY"),
  monthly("MONTHLY"),
  yearly("YEARLY"),
  oneTime("ONE_TIME"),
  otherCompensationUnit("OTHER_COMPENSATION_UNIT");

  const CompensationEntryUnitJobsV4(this.wireValue);
  final String wireValue;

  static CompensationEntryUnitJobsV4 fromValue(String value) {
    for (final item in CompensationEntryUnitJobsV4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompensationEntryUnitJobsV4 value: $value');
  }
}

