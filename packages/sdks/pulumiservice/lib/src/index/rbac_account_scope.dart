import 'package:pulumi/pulumi.dart' as pulumi;

enum RbacAccountScope implements pulumi.PulumiEnum<String> {
  insightsAccountDelete("insights_account:delete"),
  insightsAccountRead("insights_account:read"),
  insightsAccountScan("insights_account:scan"),
  insightsAccountUpdate("insights_account:update"),
  insightsAccountAccessRead("insights_account_access:read"),
  insightsAccountAccessUpdate("insights_account_access:update"),
  insightsAccountScanCancel("insights_account_scan:cancel"),
  insightsAccountScanPause("insights_account_scan:pause"),
  insightsAccountScanRead("insights_account_scan:read"),
  insightsAccountScanResume("insights_account_scan:resume"),
  insightsAccountScanUpdate("insights_account_scan:update");

  const RbacAccountScope(this.wireValue);
  @override
  final String wireValue;

  static RbacAccountScope fromValue(String value) {
    for (final item in RbacAccountScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RbacAccountScope value: $value');
  }
}
