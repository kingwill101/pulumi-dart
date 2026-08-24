// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_applications_result_policy_connection_rules_ssh.dart';

class GetZeroTrustAccessApplicationsResultPolicyConnectionRules {
  /// The SSH-specific rules that define how users may connect to the targets secured by your application.
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyConnectionRulesSsh> ssh;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyConnectionRules].
  /// [ssh] The SSH-specific rules that define how users may connect to the targets secured by your application.
  const GetZeroTrustAccessApplicationsResultPolicyConnectionRules({
    required this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ssh': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyConnectionRulesSsh, Map<String, dynamic>>(ssh, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyConnectionRules.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyConnectionRules(
      ssh: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyConnectionRulesSsh.fromMap((map['ssh']! as Map).cast<String, dynamic>())),
    );
  }
}
