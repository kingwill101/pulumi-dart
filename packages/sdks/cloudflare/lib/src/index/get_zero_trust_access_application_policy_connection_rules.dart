// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_application_policy_connection_rules_ssh.dart';

class GetZeroTrustAccessApplicationPolicyConnectionRules {
  /// The SSH-specific rules that define how users may connect to the targets secured by your application.
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyConnectionRulesSsh> ssh;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyConnectionRules].
  /// [ssh] The SSH-specific rules that define how users may connect to the targets secured by your application.
  const GetZeroTrustAccessApplicationPolicyConnectionRules({
    required this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ssh': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyConnectionRulesSsh, Map<String, dynamic>>(ssh, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessApplicationPolicyConnectionRules.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyConnectionRules(
      ssh: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyConnectionRulesSsh.fromMap((map['ssh']! as Map).cast<String, dynamic>())),
    );
  }
}
