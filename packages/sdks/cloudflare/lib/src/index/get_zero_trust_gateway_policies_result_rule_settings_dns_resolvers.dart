// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_gateway_policies_result_rule_settings_dns_resolvers_ipv4.dart';
import 'get_zero_trust_gateway_policies_result_rule_settings_dns_resolvers_ipv6.dart';

class GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolvers {
  final pulumi.Input<List<GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolversIpv4>> ipv4s;
  final pulumi.Input<List<GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolversIpv6>> ipv6s;

  /// Creates a new [GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolvers].
  /// [ipv4s] Required.
  /// [ipv6s] Required.
  const GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolvers({
    required this.ipv4s,
    required this.ipv6s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4s': pulumi.Input.mapInputValue<List<GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolversIpv4>, List<Map<String, dynamic>>>(ipv4s, (value) => pulumi.Input.encodeList<GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolversIpv4, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6s': pulumi.Input.mapInputValue<List<GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolversIpv6>, List<Map<String, dynamic>>>(ipv6s, (value) => pulumi.Input.encodeList<GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolversIpv6, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolvers.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolvers(
      ipv4s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolversIpv4>(map['ipv4s']!, (value) => GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolversIpv4.fromMap((value as Map).cast<String, dynamic>()))),
      ipv6s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolversIpv6>(map['ipv6s']!, (value) => GetZeroTrustGatewayPoliciesResultRuleSettingsDnsResolversIpv6.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
