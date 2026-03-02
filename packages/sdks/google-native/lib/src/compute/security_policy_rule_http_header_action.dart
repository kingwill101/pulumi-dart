// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_http_header_action_http_header_option.dart';

class SecurityPolicyRuleHttpHeaderAction {
  /// The list of request headers to add or overwrite if they're already present.
  final pulumi.Input<List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOption>>? requestHeadersToAdds;

  /// Creates a new [SecurityPolicyRuleHttpHeaderAction].
  /// [requestHeadersToAdds] The list of request headers to add or overwrite if they're already present.
  SecurityPolicyRuleHttpHeaderAction({
    this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRuleHttpHeaderActionHttpHeaderOption>, List<Map<String, dynamic>>>(requestHeadersToAdds, (value) => pulumi.Input.encodeList<SecurityPolicyRuleHttpHeaderActionHttpHeaderOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityPolicyRuleHttpHeaderAction.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderAction(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null ? null : (pulumi.Input.decodeList<SecurityPolicyRuleHttpHeaderActionHttpHeaderOption>(map['requestHeadersToAdds'], (value) => SecurityPolicyRuleHttpHeaderActionHttpHeaderOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

