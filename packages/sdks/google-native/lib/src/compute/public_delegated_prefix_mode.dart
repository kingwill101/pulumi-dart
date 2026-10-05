import 'package:pulumi/pulumi.dart' as pulumi;

/// The public delegated prefix mode for IPv6 only.
enum PublicDelegatedPrefixMode implements pulumi.PulumiEnum<String> {
  delegation("DELEGATION"),
  externalIpv6ForwardingRuleCreation("EXTERNAL_IPV6_FORWARDING_RULE_CREATION");

  const PublicDelegatedPrefixMode(this.wireValue);
  @override
  final String wireValue;

  static PublicDelegatedPrefixMode fromValue(String value) {
    for (final item in PublicDelegatedPrefixMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicDelegatedPrefixMode value: $value');
  }
}
