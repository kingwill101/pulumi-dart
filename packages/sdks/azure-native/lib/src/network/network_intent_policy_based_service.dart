import 'package:pulumi/pulumi.dart' as pulumi;

/// Network intent policy based services.
enum NetworkIntentPolicyBasedService implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueAll("All"),
  valueAllowRulesOnly("AllowRulesOnly");

  const NetworkIntentPolicyBasedService(this.wireValue);
  @override
  final String wireValue;

  static NetworkIntentPolicyBasedService fromValue(String value) {
    for (final item in NetworkIntentPolicyBasedService.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkIntentPolicyBasedService value: $value');
  }
}
