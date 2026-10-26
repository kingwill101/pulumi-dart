import 'package:pulumi/pulumi.dart' as pulumi;

/// Update strategy of the node pool.
enum UpgradeSettingsStrategyContainerV1beta1 implements pulumi.PulumiEnum<String> {
  nodePoolUpdateStrategyUnspecified("NODE_POOL_UPDATE_STRATEGY_UNSPECIFIED"),
  blueGreen("BLUE_GREEN"),
  surge("SURGE");

  const UpgradeSettingsStrategyContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static UpgradeSettingsStrategyContainerV1beta1 fromValue(String value) {
    for (final item in UpgradeSettingsStrategyContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeSettingsStrategyContainerV1beta1 value: $value');
  }
}
