/// Strategy that defines how we do redaction.
enum SecuritySettingRedactionStrategyDialogflowV3beta1 {
  redactionStrategyUnspecified("REDACTION_STRATEGY_UNSPECIFIED"),
  redactWithService("REDACT_WITH_SERVICE");

  const SecuritySettingRedactionStrategyDialogflowV3beta1(this.wireValue);
  final String wireValue;

  static SecuritySettingRedactionStrategyDialogflowV3beta1 fromValue(String value) {
    for (final item in SecuritySettingRedactionStrategyDialogflowV3beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecuritySettingRedactionStrategyDialogflowV3beta1 value: $value');
  }
}
