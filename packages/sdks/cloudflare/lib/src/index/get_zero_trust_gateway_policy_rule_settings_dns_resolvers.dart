// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_gateway_policy_rule_settings_dns_resolvers_ipv4.dart';
import 'get_zero_trust_gateway_policy_rule_settings_dns_resolvers_ipv6.dart';

class GetZeroTrustGatewayPolicyRuleSettingsDnsResolvers {
  final pulumi.Input<List<GetZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4>> ipv4s;
  final pulumi.Input<List<GetZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6>> ipv6s;

  /// Creates a new [GetZeroTrustGatewayPolicyRuleSettingsDnsResolvers].
  /// [ipv4s] Required.
  /// [ipv6s] Required.
  const GetZeroTrustGatewayPolicyRuleSettingsDnsResolvers({
    required this.ipv4s,
    required this.ipv6s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4s': pulumi.Input.mapInputValue<List<GetZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4>, List<Map<String, dynamic>>>(ipv4s, (value) => pulumi.Input.encodeList<GetZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6s': pulumi.Input.mapInputValue<List<GetZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6>, List<Map<String, dynamic>>>(ipv6s, (value) => pulumi.Input.encodeList<GetZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustGatewayPolicyRuleSettingsDnsResolvers.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyRuleSettingsDnsResolvers(
      ipv4s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4>(map['ipv4s']!, (value) => GetZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4.fromMap((value as Map).cast<String, dynamic>()))),
      ipv6s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6>(map['ipv6s']!, (value) => GetZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
