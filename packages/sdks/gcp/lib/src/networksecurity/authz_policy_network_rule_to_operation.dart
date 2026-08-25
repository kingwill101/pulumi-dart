// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_network_rule_to_operation_sni.dart';

class AuthzPolicyNetworkRuleToOperation {
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyNetworkRuleToOperationSni>?>? snis;

  /// Creates a new [AuthzPolicyNetworkRuleToOperation].
  /// [snis] Structure is documented below.
  const AuthzPolicyNetworkRuleToOperation({
    this.snis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snis': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyNetworkRuleToOperationSni>, List<Map<String, dynamic>>>(snis, (value) => pulumi.Input.encodeList<AuthzPolicyNetworkRuleToOperationSni, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthzPolicyNetworkRuleToOperation.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleToOperation(
      snis: (() { final guardedValue = map['snis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyNetworkRuleToOperationSni>(guardedValue, (value) => AuthzPolicyNetworkRuleToOperationSni.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
