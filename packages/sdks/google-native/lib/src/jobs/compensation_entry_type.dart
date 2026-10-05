import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Compensation type. Default is CompensationUnit.COMPENSATION_TYPE_UNSPECIFIED.
enum CompensationEntryType implements pulumi.PulumiEnum<String> {
  compensationTypeUnspecified("COMPENSATION_TYPE_UNSPECIFIED"),
  base("BASE"),
  bonus("BONUS"),
  signingBonus("SIGNING_BONUS"),
  equity("EQUITY"),
  profitSharing("PROFIT_SHARING"),
  commissions("COMMISSIONS"),
  tips("TIPS"),
  otherCompensationType("OTHER_COMPENSATION_TYPE");

  const CompensationEntryType(this.wireValue);
  @override
  final String wireValue;

  static CompensationEntryType fromValue(String value) {
    for (final item in CompensationEntryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompensationEntryType value: $value');
  }
}
