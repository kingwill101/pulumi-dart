// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_rule_header_action_request_headers_to_add.dart';

class OrganizationSecurityPolicyRuleHeaderAction {
  /// The list of request headers to add or overwrite if they're already present.
  /// Structure is documented below.
  final pulumi.Input<List<OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAdd>>? requestHeadersToAdds;

  /// Creates a new [OrganizationSecurityPolicyRuleHeaderAction].
  /// [requestHeadersToAdds] The list of request headers to add or overwrite if they're already present.
  const OrganizationSecurityPolicyRuleHeaderAction({
    this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeadersToAdds': ?pulumi.Input.mapOptionalInputValue<List<OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAdd>, List<Map<String, dynamic>>>(requestHeadersToAdds, (value) => pulumi.Input.encodeList<OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAdd, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OrganizationSecurityPolicyRuleHeaderAction.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyRuleHeaderAction(
      requestHeadersToAdds: (() { final guardedValue = map['requestHeadersToAdds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAdd>(guardedValue, (value) => OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAdd.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
