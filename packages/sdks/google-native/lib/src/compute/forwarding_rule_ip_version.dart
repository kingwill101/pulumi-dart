import 'package:pulumi/pulumi.dart' as pulumi;

/// The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
enum ForwardingRuleIpVersion implements pulumi.PulumiEnum<String> {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const ForwardingRuleIpVersion(this.wireValue);
  @override
  final String wireValue;

  static ForwardingRuleIpVersion fromValue(String value) {
    for (final item in ForwardingRuleIpVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRuleIpVersion value: $value');
  }
}
