// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_network_rule_to_not_operation.dart';
import 'authz_policy_network_rule_to_operation.dart';

class AuthzPolicyNetworkRuleTo {
  /// Describes properties of one or more targets of a request. At least one of operations or notOperations must be specified. Limited to 1 operation.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyNetworkRuleToNotOperation>?>? notOperations;
  /// Describes properties of one or more targets of a request. At least one of operations or notOperations must be specified. Limited to 1 operation.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyNetworkRuleToOperation>?>? operations;

  /// Creates a new [AuthzPolicyNetworkRuleTo].
  /// [notOperations] Describes properties of one or more targets of a request. At least one of operations or notOperations must be specified. Limited to 1 operation.
  /// [operations] Describes properties of one or more targets of a request. At least one of operations or notOperations must be specified. Limited to 1 operation.
  const AuthzPolicyNetworkRuleTo({
    this.notOperations,
    this.operations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notOperations': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyNetworkRuleToNotOperation>, List<Map<String, dynamic>>>(notOperations, (value) => pulumi.Input.encodeList<AuthzPolicyNetworkRuleToNotOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operations': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyNetworkRuleToOperation>, List<Map<String, dynamic>>>(operations, (value) => pulumi.Input.encodeList<AuthzPolicyNetworkRuleToOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthzPolicyNetworkRuleTo.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleTo(
      notOperations: (() { final guardedValue = map['notOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyNetworkRuleToNotOperation>(guardedValue, (value) => AuthzPolicyNetworkRuleToNotOperation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operations: (() { final guardedValue = map['operations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyNetworkRuleToOperation>(guardedValue, (value) => AuthzPolicyNetworkRuleToOperation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
