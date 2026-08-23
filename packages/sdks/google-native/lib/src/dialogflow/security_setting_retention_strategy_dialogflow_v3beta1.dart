/// Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
enum SecuritySettingRetentionStrategyDialogflowV3beta1 {
  retentionStrategyUnspecified("RETENTION_STRATEGY_UNSPECIFIED"),
  removeAfterConversation("REMOVE_AFTER_CONVERSATION");

  const SecuritySettingRetentionStrategyDialogflowV3beta1(this.wireValue);
  final String wireValue;

  static SecuritySettingRetentionStrategyDialogflowV3beta1 fromValue(String value) {
    for (final item in SecuritySettingRetentionStrategyDialogflowV3beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecuritySettingRetentionStrategyDialogflowV3beta1 value: $value');
  }
}
