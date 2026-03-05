// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_header_action_request_headers_to_add.dart';

class SecurityPolicyRuleHeaderAction {
  /// The list of request headers to add or overwrite if they're already present.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityPolicyRuleHeaderActionRequestHeadersToAdd>>? requestHeadersToAdds;

  /// Creates a new [SecurityPolicyRuleHeaderAction].
  /// [requestHeadersToAdds] The list of request headers to add or overwrite if they're already present.
  SecurityPolicyRuleHeaderAction({
    this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRuleHeaderActionRequestHeadersToAdd>, List<Map<String, dynamic>>>(requestHeadersToAdds, (value) => pulumi.Input.encodeList<SecurityPolicyRuleHeaderActionRequestHeadersToAdd, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityPolicyRuleHeaderAction.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleHeaderAction(
      requestHeadersToAdds: (() { final guardedValue = map['requestHeadersToAdds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityPolicyRuleHeaderActionRequestHeadersToAdd>(guardedValue, (value) => SecurityPolicyRuleHeaderActionRequestHeadersToAdd.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

