import 'package:pulumi/pulumi.dart' as pulumi;

/// The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
enum RegionCommitmentPlanComputeBeta implements pulumi.PulumiEnum<String> {
  invalid("INVALID"),
  thirtySixMonth("THIRTY_SIX_MONTH"),
  twelveMonth("TWELVE_MONTH");

  const RegionCommitmentPlanComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static RegionCommitmentPlanComputeBeta fromValue(String value) {
    for (final item in RegionCommitmentPlanComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionCommitmentPlanComputeBeta value: $value');
  }
}
