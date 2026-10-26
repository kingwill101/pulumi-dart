import 'package:pulumi/pulumi.dart' as pulumi;

/// The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
enum ForwardingRuleIpVersionComputeV1 implements pulumi.PulumiEnum<String> {
  ipv4("IPV4"),
  ipv6("IPV6"),
  unspecifiedVersion("UNSPECIFIED_VERSION");

  const ForwardingRuleIpVersionComputeV1(this.wireValue);
  @override
  final String wireValue;

  static ForwardingRuleIpVersionComputeV1 fromValue(String value) {
    for (final item in ForwardingRuleIpVersionComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRuleIpVersionComputeV1 value: $value');
  }
}
