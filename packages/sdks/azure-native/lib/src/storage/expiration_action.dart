import 'package:pulumi/pulumi.dart' as pulumi;

/// The SAS Expiration Action defines the action to be performed when sasPolicy.sasExpirationPeriod is violated. The 'Log' action can be used for audit purposes and the 'Block' action can be used to block and deny the usage of SAS tokens that do not adhere to the sas policy expiration period.
enum ExpirationAction implements pulumi.PulumiEnum<String> {
  valueLog("Log"),
  valueBlock("Block");

  const ExpirationAction(this.wireValue);
  @override
  final String wireValue;

  static ExpirationAction fromValue(String value) {
    for (final item in ExpirationAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpirationAction value: $value');
  }
}
