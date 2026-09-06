import 'package:pulumi/pulumi.dart' as pulumi;

/// Function app site update strategy type. Available options: Recreate, RollingUpdate
enum SiteUpdateStrategyType implements pulumi.PulumiEnum<String> {
  recreate("Recreate"),
  rollingUpdate("RollingUpdate");

  const SiteUpdateStrategyType(this.wireValue);
  @override
  final String wireValue;

  static SiteUpdateStrategyType fromValue(String value) {
    for (final item in SiteUpdateStrategyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SiteUpdateStrategyType value: $value');
  }
}
