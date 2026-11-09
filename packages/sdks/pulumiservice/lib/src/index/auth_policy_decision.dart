import 'package:pulumi/pulumi.dart' as pulumi;

enum AuthPolicyDecision implements pulumi.PulumiEnum<String> {
  valueDeny("deny"),
  valueAllow("allow");

  const AuthPolicyDecision(this.wireValue);
  @override
  final String wireValue;

  static AuthPolicyDecision fromValue(String value) {
    for (final item in AuthPolicyDecision.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthPolicyDecision value: $value');
  }
}
