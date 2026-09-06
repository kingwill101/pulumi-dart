import 'package:pulumi/pulumi.dart' as pulumi;

/// The network traffic is allowed or denied.
enum SecurityRuleAccess implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueDeny("Deny");

  const SecurityRuleAccess(this.wireValue);
  @override
  final String wireValue;

  static SecurityRuleAccess fromValue(String value) {
    for (final item in SecurityRuleAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityRuleAccess value: $value');
  }
}
