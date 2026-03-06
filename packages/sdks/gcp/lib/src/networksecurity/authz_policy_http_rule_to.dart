// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_http_rule_to_not_operation.dart';
import 'authz_policy_http_rule_to_operation.dart';

class AuthzPolicyHttpRuleTo {
  /// Describes the negated properties of the targets of a request. Matches requests for operations that do not match the criteria specified in this field. At least one of operations or notOperations must be specified. Limited to 1 not_operation.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRuleToNotOperation>>? notOperations;
  /// Describes properties of one or more targets of a request. At least one of operations or notOperations must be specified. Limited to 1 operation. A match occurs when ANY operation (in operations or notOperations) matches. Within an operation, the match follows AND semantics across fields and OR semantics within a field, i.e. a match occurs when ANY path matches AND ANY header matches and ANY method matches.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRuleToOperation>>? operations;

  /// Creates a new [AuthzPolicyHttpRuleTo].
  /// [notOperations] Describes the negated properties of the targets of a request. Matches requests for operations that do not match the criteria specified in this field. At least one of operations or notOperations must be specified. Limited to 1 not_operation.
  /// [operations] Describes properties of one or more targets of a request. At least one of operations or notOperations must be specified. Limited to 1 operation. A match occurs when ANY operation (in operations or notOperations) matches. Within an operation, the match follows AND semantics across fields and OR semantics within a field, i.e. a match occurs when ANY path matches AND ANY header matches and ANY method matches.
  const AuthzPolicyHttpRuleTo({
    this.notOperations,
    this.operations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notOperations': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyHttpRuleToNotOperation>, List<Map<String, dynamic>>>(notOperations, (value) => pulumi.Input.encodeList<AuthzPolicyHttpRuleToNotOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operations': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyHttpRuleToOperation>, List<Map<String, dynamic>>>(operations, (value) => pulumi.Input.encodeList<AuthzPolicyHttpRuleToOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthzPolicyHttpRuleTo.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleTo(
      notOperations: (() { final guardedValue = map['notOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyHttpRuleToNotOperation>(guardedValue, (value) => AuthzPolicyHttpRuleToNotOperation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operations: (() { final guardedValue = map['operations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyHttpRuleToOperation>(guardedValue, (value) => AuthzPolicyHttpRuleToOperation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

