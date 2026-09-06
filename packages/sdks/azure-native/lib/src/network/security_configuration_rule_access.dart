import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the access allowed for this particular rule
enum SecurityConfigurationRuleAccess implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueDeny("Deny"),
  valueAlwaysAllow("AlwaysAllow");

  const SecurityConfigurationRuleAccess(this.wireValue);
  @override
  final String wireValue;

  static SecurityConfigurationRuleAccess fromValue(String value) {
    for (final item in SecurityConfigurationRuleAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityConfigurationRuleAccess value: $value');
  }
}
