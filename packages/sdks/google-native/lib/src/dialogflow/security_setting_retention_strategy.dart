import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
enum SecuritySettingRetentionStrategy implements pulumi.PulumiEnum<String> {
  retentionStrategyUnspecified("RETENTION_STRATEGY_UNSPECIFIED"),
  removeAfterConversation("REMOVE_AFTER_CONVERSATION");

  const SecuritySettingRetentionStrategy(this.wireValue);
  @override
  final String wireValue;

  static SecuritySettingRetentionStrategy fromValue(String value) {
    for (final item in SecuritySettingRetentionStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecuritySettingRetentionStrategy value: $value');
  }
}
