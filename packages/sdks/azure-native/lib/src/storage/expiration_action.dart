/// The SAS Expiration Action defines the action to be performed when sasPolicy.sasExpirationPeriod is violated. The 'Log' action can be used for audit purposes and the 'Block' action can be used to block and deny the usage of SAS tokens that do not adhere to the sas policy expiration period.
enum ExpirationAction {
  valueLog("Log"),
  valueBlock("Block");

  const ExpirationAction(this.value);
  final String value;

  static ExpirationAction fromValue(String value) {
    for (final item in ExpirationAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpirationAction value: $value');
  }
}

