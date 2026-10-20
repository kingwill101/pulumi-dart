import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
enum AuthorizationPolicyAction implements pulumi.PulumiEnum<String> {
  actionUnspecified("ACTION_UNSPECIFIED"),
  allow("ALLOW"),
  deny("DENY");

  const AuthorizationPolicyAction(this.wireValue);
  @override
  final String wireValue;

  static AuthorizationPolicyAction fromValue(String value) {
    for (final item in AuthorizationPolicyAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizationPolicyAction value: $value');
  }
}
