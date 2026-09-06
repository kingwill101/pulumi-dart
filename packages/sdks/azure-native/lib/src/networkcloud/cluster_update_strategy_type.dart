import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode of operation for runtime protection.
enum ClusterUpdateStrategyType implements pulumi.PulumiEnum<String> {
  valueRack("Rack"),
  valuePauseAfterRack("PauseAfterRack");

  const ClusterUpdateStrategyType(this.wireValue);
  @override
  final String wireValue;

  static ClusterUpdateStrategyType fromValue(String value) {
    for (final item in ClusterUpdateStrategyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterUpdateStrategyType value: $value');
  }
}
