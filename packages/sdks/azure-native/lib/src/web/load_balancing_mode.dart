import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment.
enum LoadBalancingMode implements pulumi.PulumiEnum<String> {
  none("None"),
  web("Web"),
  publishing("Publishing"),
  webPublishing("Web, Publishing");

  const LoadBalancingMode(this.wireValue);
  @override
  final String wireValue;

  static LoadBalancingMode fromValue(String value) {
    for (final item in LoadBalancingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancingMode value: $value');
  }
}
