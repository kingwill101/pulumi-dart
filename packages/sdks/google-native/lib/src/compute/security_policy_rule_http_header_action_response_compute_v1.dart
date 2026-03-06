// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_http_header_action_http_header_option_response_compute_v1.dart';

class SecurityPolicyRuleHttpHeaderActionResponseComputeV1 {
  /// The list of request headers to add or overwrite if they're already present.
  final pulumi.Input<List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeV1>> requestHeadersToAdds;

  /// Creates a new [SecurityPolicyRuleHttpHeaderActionResponseComputeV1].
  /// [requestHeadersToAdds] The list of request headers to add or overwrite if they're already present.
  const SecurityPolicyRuleHttpHeaderActionResponseComputeV1({
    required this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': pulumi.Input.mapInputValue<List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeV1>, List<Map<String, dynamic>>>(requestHeadersToAdds, (value) => pulumi.Input.encodeList<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityPolicyRuleHttpHeaderActionResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionResponseComputeV1(
      requestHeadersToAdds: pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeV1>(map['requestHeadersToAdds']!, (value) => SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

