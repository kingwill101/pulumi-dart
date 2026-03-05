// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_http_header_action_http_header_option_compute_v1.dart';

class SecurityPolicyRuleHttpHeaderActionComputeV1 {
  /// The list of request headers to add or overwrite if they're already present.
  final pulumi.Input<List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeV1>>? requestHeadersToAdds;

  /// Creates a new [SecurityPolicyRuleHttpHeaderActionComputeV1].
  /// [requestHeadersToAdds] The list of request headers to add or overwrite if they're already present.
  SecurityPolicyRuleHttpHeaderActionComputeV1({
    this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeV1>, List<Map<String, dynamic>>>(requestHeadersToAdds, (value) => pulumi.Input.encodeList<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityPolicyRuleHttpHeaderActionComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionComputeV1(
      requestHeadersToAdds: (() { final guardedValue = map['requestHeadersToAdds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeV1>(guardedValue, (value) => SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

