// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessRuleConfiguration {
  /// For `target: ip`: The configuration target. You must set the target to `ip` when specifying an IP address in the rule.
  final pulumi.Input<String> target;
  /// For `target: ip`: The IP address to match. This address will be compared to the IP address of incoming requests.
  ///
  /// For `target: ip6`: The IPv6 address to match.
  ///
  /// For `target: ipRange`: The IP address range to match. You can only use prefix lengths `/16` and `/24` for IPv4 ranges, and prefix lengths `/32`, `/48`, and `/64` for IPv6 ranges.
  ///
  /// For `target: asn`: The AS number to match.
  ///
  /// For `target: country`: The two-letter ISO-3166-1 alpha-2 code to match. For more information, refer to [IP Access rules: Parameters](https://developers.cloudflare.com/waf/tools/ip-access-rules/parameters/#country).
  final pulumi.Input<String> value;

  /// Creates a new [GetAccessRuleConfiguration].
  /// [target] For `target: ip`: The configuration target. You must set the target to `ip` when specifying an IP address in the rule.
  /// [value] For `target: ip`: The IP address to match. This address will be compared to the IP address of incoming requests.
  const GetAccessRuleConfiguration({
    required this.target,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': target,
      'value': value,
    };
  }

  factory GetAccessRuleConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAccessRuleConfiguration(
      target: pulumi.Input.fromValue(map['target'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
