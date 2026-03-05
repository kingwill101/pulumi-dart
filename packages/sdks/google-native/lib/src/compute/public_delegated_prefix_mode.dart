/// The public delegated prefix mode for IPv6 only.
enum PublicDelegatedPrefixMode {
  delegation("DELEGATION"),
  externalIpv6ForwardingRuleCreation("EXTERNAL_IPV6_FORWARDING_RULE_CREATION");

  const PublicDelegatedPrefixMode(this.wireValue);
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

