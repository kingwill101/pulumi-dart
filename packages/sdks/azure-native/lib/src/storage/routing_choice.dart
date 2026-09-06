import 'package:pulumi/pulumi.dart' as pulumi;

/// Routing Choice defines the kind of network routing opted by the user.
enum RoutingChoice implements pulumi.PulumiEnum<String> {
  valueMicrosoftRouting("MicrosoftRouting"),
  valueInternetRouting("InternetRouting");

  const RoutingChoice(this.wireValue);
  @override
  final String wireValue;

  static RoutingChoice fromValue(String value) {
    for (final item in RoutingChoice.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingChoice value: $value');
  }
}
