import 'package:pulumi/pulumi.dart' as pulumi;

/// Compensation type. Default is CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
enum CompensationEntryTypeJobsV4 implements pulumi.PulumiEnum<String> {
  compensationTypeUnspecified("COMPENSATION_TYPE_UNSPECIFIED"),
  base("BASE"),
  bonus("BONUS"),
  signingBonus("SIGNING_BONUS"),
  equity("EQUITY"),
  profitSharing("PROFIT_SHARING"),
  commissions("COMMISSIONS"),
  tips("TIPS"),
  otherCompensationType("OTHER_COMPENSATION_TYPE");

  const CompensationEntryTypeJobsV4(this.wireValue);
  @override
  final String wireValue;

  static CompensationEntryTypeJobsV4 fromValue(String value) {
    for (final item in CompensationEntryTypeJobsV4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompensationEntryTypeJobsV4 value: $value');
  }
}
