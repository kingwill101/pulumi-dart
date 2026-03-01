/// Network intent policy based services.
enum NetworkIntentPolicyBasedService {
  valueNone("None"),
  valueAll("All"),
  valueAllowRulesOnly("AllowRulesOnly");

  const NetworkIntentPolicyBasedService(this.value);
  final String value;

  static NetworkIntentPolicyBasedService fromValue(String value) {
    for (final item in NetworkIntentPolicyBasedService.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkIntentPolicyBasedService value: $value');
  }
}

