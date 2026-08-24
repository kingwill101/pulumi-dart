// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_gateway_logging_settings_by_rule_type_dns.dart';
import 'get_zero_trust_gateway_logging_settings_by_rule_type_http.dart';
import 'get_zero_trust_gateway_logging_settings_by_rule_type_l4.dart';

class GetZeroTrustGatewayLoggingSettingsByRuleType {
  /// Configure logging settings for DNS firewall.
  final pulumi.Input<GetZeroTrustGatewayLoggingSettingsByRuleTypeDns> dns;
  /// Configure logging settings for HTTP/HTTPS firewall.
  final pulumi.Input<GetZeroTrustGatewayLoggingSettingsByRuleTypeHttp> http;
  /// Configure logging settings for Network firewall.
  final pulumi.Input<GetZeroTrustGatewayLoggingSettingsByRuleTypeL4> l4;

  /// Creates a new [GetZeroTrustGatewayLoggingSettingsByRuleType].
  /// [dns] Configure logging settings for DNS firewall.
  /// [http] Configure logging settings for HTTP/HTTPS firewall.
  /// [l4] Configure logging settings for Network firewall.
  const GetZeroTrustGatewayLoggingSettingsByRuleType({
    required this.dns,
    required this.http,
    required this.l4,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dns': pulumi.Input.mapInputValue<GetZeroTrustGatewayLoggingSettingsByRuleTypeDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'http': pulumi.Input.mapInputValue<GetZeroTrustGatewayLoggingSettingsByRuleTypeHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
      'l4': pulumi.Input.mapInputValue<GetZeroTrustGatewayLoggingSettingsByRuleTypeL4, Map<String, dynamic>>(l4, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustGatewayLoggingSettingsByRuleType.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayLoggingSettingsByRuleType(
      dns: pulumi.Input.fromValue(GetZeroTrustGatewayLoggingSettingsByRuleTypeDns.fromMap((map['dns']! as Map).cast<String, dynamic>())),
      http: pulumi.Input.fromValue(GetZeroTrustGatewayLoggingSettingsByRuleTypeHttp.fromMap((map['http']! as Map).cast<String, dynamic>())),
      l4: pulumi.Input.fromValue(GetZeroTrustGatewayLoggingSettingsByRuleTypeL4.fromMap((map['l4']! as Map).cast<String, dynamic>())),
    );
  }
}
