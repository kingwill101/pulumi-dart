import 'package:pulumi/pulumi.dart' as pulumi;

/// The public delegated prefix mode for IPv6 only.
enum GlobalPublicDelegatedPrefixMode implements pulumi.PulumiEnum<String> {
  delegation("DELEGATION"),
  externalIpv6ForwardingRuleCreation("EXTERNAL_IPV6_FORWARDING_RULE_CREATION");

  const GlobalPublicDelegatedPrefixMode(this.wireValue);
  @override
  final String wireValue;

  static GlobalPublicDelegatedPrefixMode fromValue(String value) {
    for (final item in GlobalPublicDelegatedPrefixMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalPublicDelegatedPrefixMode value: $value');
  }
}
