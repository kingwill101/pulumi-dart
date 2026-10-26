// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_network_rule_to_not_operation_sni.dart';

class AuthzPolicyNetworkRuleToNotOperation {
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyNetworkRuleToNotOperationSni>?>? snis;

  /// Creates a new [AuthzPolicyNetworkRuleToNotOperation].
  /// [snis] Structure is documented below.
  const AuthzPolicyNetworkRuleToNotOperation({
    this.snis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snis': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyNetworkRuleToNotOperationSni>, List<Map<String, dynamic>>>(snis, (value) => pulumi.Input.encodeList<AuthzPolicyNetworkRuleToNotOperationSni, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthzPolicyNetworkRuleToNotOperation.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleToNotOperation(
      snis: (() { final guardedValue = map['snis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyNetworkRuleToNotOperationSni>(guardedValue, (value) => AuthzPolicyNetworkRuleToNotOperationSni.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
