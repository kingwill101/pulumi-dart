// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_gateway_logging_settings_by_rule_type_dns.dart';
import 'zero_trust_gateway_logging_settings_by_rule_type_http.dart';
import 'zero_trust_gateway_logging_settings_by_rule_type_l4.dart';

class ZeroTrustGatewayLoggingSettingsByRuleType {
  /// Configure logging settings for DNS firewall.
  final pulumi.Input<ZeroTrustGatewayLoggingSettingsByRuleTypeDns?>? dns;
  /// Configure logging settings for HTTP/HTTPS firewall.
  final pulumi.Input<ZeroTrustGatewayLoggingSettingsByRuleTypeHttp?>? http;
  /// Configure logging settings for Network firewall.
  final pulumi.Input<ZeroTrustGatewayLoggingSettingsByRuleTypeL4?>? l4;

  /// Creates a new [ZeroTrustGatewayLoggingSettingsByRuleType].
  /// [dns] Configure logging settings for DNS firewall.
  /// [http] Configure logging settings for HTTP/HTTPS firewall.
  /// [l4] Configure logging settings for Network firewall.
  const ZeroTrustGatewayLoggingSettingsByRuleType({
    this.dns,
    this.http,
    this.l4,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dns': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayLoggingSettingsByRuleTypeDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'http': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayLoggingSettingsByRuleTypeHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
      'l4': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayLoggingSettingsByRuleTypeL4, Map<String, dynamic>>(l4, (value) => value.toMap()),
    };
  }

  factory ZeroTrustGatewayLoggingSettingsByRuleType.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayLoggingSettingsByRuleType(
      dns: (() { final guardedValue = map['dns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayLoggingSettingsByRuleTypeDns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayLoggingSettingsByRuleTypeHttp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      l4: (() { final guardedValue = map['l4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayLoggingSettingsByRuleTypeL4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
