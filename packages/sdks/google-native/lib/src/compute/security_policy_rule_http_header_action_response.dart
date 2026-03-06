// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_http_header_action_http_header_option_response.dart';

class SecurityPolicyRuleHttpHeaderActionResponse {
  /// The list of request headers to add or overwrite if they're already present.
  final pulumi.Input<List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse>> requestHeadersToAdds;

  /// Creates a new [SecurityPolicyRuleHttpHeaderActionResponse].
  /// [requestHeadersToAdds] The list of request headers to add or overwrite if they're already present.
  const SecurityPolicyRuleHttpHeaderActionResponse({
    required this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': pulumi.Input.mapInputValue<List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse>, List<Map<String, dynamic>>>(requestHeadersToAdds, (value) => pulumi.Input.encodeList<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityPolicyRuleHttpHeaderActionResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionResponse(
      requestHeadersToAdds: pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse>(map['requestHeadersToAdds']!, (value) => SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

