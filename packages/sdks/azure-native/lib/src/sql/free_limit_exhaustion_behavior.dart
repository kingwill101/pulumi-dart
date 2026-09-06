import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the behavior when monthly free limits are exhausted for the free database.
///
/// AutoPause: The database will be auto paused upon exhaustion of free limits for remainder of the month.
///
/// BillForUsage: The database will continue to be online upon exhaustion of free limits and any overage will be billed.
enum FreeLimitExhaustionBehavior implements pulumi.PulumiEnum<String> {
  valueAutoPause("AutoPause"),
  valueBillOverUsage("BillOverUsage");

  const FreeLimitExhaustionBehavior(this.wireValue);
  @override
  final String wireValue;

  static FreeLimitExhaustionBehavior fromValue(String value) {
    for (final item in FreeLimitExhaustionBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FreeLimitExhaustionBehavior value: $value');
  }
}
