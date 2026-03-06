// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_http_header_action_http_header_option_compute_beta.dart';

class SecurityPolicyRuleHttpHeaderActionComputeBeta {
  /// The list of request headers to add or overwrite if they're already present.
  final pulumi.Input<List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeBeta>>? requestHeadersToAdds;

  /// Creates a new [SecurityPolicyRuleHttpHeaderActionComputeBeta].
  /// [requestHeadersToAdds] The list of request headers to add or overwrite if they're already present.
  const SecurityPolicyRuleHttpHeaderActionComputeBeta({
    this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeBeta>, List<Map<String, dynamic>>>(requestHeadersToAdds, (value) => pulumi.Input.encodeList<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityPolicyRuleHttpHeaderActionComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionComputeBeta(
      requestHeadersToAdds: (() { final guardedValue = map['requestHeadersToAdds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeBeta>(guardedValue, (value) => SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

