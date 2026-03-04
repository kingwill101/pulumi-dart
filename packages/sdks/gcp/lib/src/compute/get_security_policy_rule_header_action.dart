// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policy_rule_header_action_request_headers_to_add.dart';

class GetSecurityPolicyRuleHeaderAction {
  /// The list of request headers to add or overwrite if they're already present.
  final pulumi.Input<List<GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd>>
  requestHeadersToAdds;

  /// Creates a new [GetSecurityPolicyRuleHeaderAction].
  /// [requestHeadersToAdds] The list of request headers to add or overwrite if they're already present.
  GetSecurityPolicyRuleHeaderAction({required this.requestHeadersToAdds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds':
          pulumi.Input.mapInputValue<
            List<GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd>,
            List<Map<String, dynamic>>
          >(
            requestHeadersToAdds,
            (value) =>
                pulumi.Input.encodeList<
                  GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetSecurityPolicyRuleHeaderAction.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyRuleHeaderAction(
      requestHeadersToAdds: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd
        >(
          map['requestHeadersToAdds']!,
          (value) =>
              GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
