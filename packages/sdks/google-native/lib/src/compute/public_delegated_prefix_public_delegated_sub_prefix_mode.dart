import 'package:pulumi/pulumi.dart' as pulumi;

/// The PublicDelegatedSubPrefix mode for IPv6 only.
enum PublicDelegatedPrefixPublicDelegatedSubPrefixMode implements pulumi.PulumiEnum<String> {
  delegation("DELEGATION"),
  externalIpv6ForwardingRuleCreation("EXTERNAL_IPV6_FORWARDING_RULE_CREATION");

  const PublicDelegatedPrefixPublicDelegatedSubPrefixMode(this.wireValue);
  @override
  final String wireValue;

  static PublicDelegatedPrefixPublicDelegatedSubPrefixMode fromValue(String value) {
    for (final item in PublicDelegatedPrefixPublicDelegatedSubPrefixMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicDelegatedPrefixPublicDelegatedSubPrefixMode value: $value');
  }
}
