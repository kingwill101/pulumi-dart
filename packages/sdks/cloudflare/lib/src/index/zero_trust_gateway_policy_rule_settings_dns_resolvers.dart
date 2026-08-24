// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_gateway_policy_rule_settings_dns_resolvers_ipv4.dart';
import 'zero_trust_gateway_policy_rule_settings_dns_resolvers_ipv6.dart';

class ZeroTrustGatewayPolicyRuleSettingsDnsResolvers {
  final pulumi.Input<List<ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4>?>? ipv4s;
  final pulumi.Input<List<ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6>?>? ipv6s;

  /// Creates a new [ZeroTrustGatewayPolicyRuleSettingsDnsResolvers].
  /// [ipv4s] Optional.
  /// [ipv6s] Optional.
  const ZeroTrustGatewayPolicyRuleSettingsDnsResolvers({
    this.ipv4s,
    this.ipv6s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4s': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4>, List<Map<String, dynamic>>>(ipv4s, (value) => pulumi.Input.encodeList<ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6s': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6>, List<Map<String, dynamic>>>(ipv6s, (value) => pulumi.Input.encodeList<ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustGatewayPolicyRuleSettingsDnsResolvers.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPolicyRuleSettingsDnsResolvers(
      ipv4s: (() { final guardedValue = map['ipv4s']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4>(guardedValue, (value) => ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipv6s: (() { final guardedValue = map['ipv6s']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6>(guardedValue, (value) => ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
