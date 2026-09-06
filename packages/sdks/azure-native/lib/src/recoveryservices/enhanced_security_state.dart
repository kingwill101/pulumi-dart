import 'package:pulumi/pulumi.dart' as pulumi;

enum EnhancedSecurityState implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueAlwaysON("AlwaysON");

  const EnhancedSecurityState(this.wireValue);
  @override
  final String wireValue;

  static EnhancedSecurityState fromValue(String value) {
    for (final item in EnhancedSecurityState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnhancedSecurityState value: $value');
  }
}
