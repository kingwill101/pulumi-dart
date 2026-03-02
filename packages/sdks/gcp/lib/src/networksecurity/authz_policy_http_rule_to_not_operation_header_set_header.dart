// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_http_rule_to_not_operation_header_set_header_value.dart';

class AuthzPolicyHttpRuleToNotOperationHeaderSetHeader {
  /// Specifies the name of the header in the request.
  final pulumi.Input<String>? name;
  /// Specifies how the header match will be performed.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyHttpRuleToNotOperationHeaderSetHeaderValue>? value;

  /// Creates a new [AuthzPolicyHttpRuleToNotOperationHeaderSetHeader].
  /// [name] Specifies the name of the header in the request.
  /// [value] Specifies how the header match will be performed.
  AuthzPolicyHttpRuleToNotOperationHeaderSetHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyHttpRuleToNotOperationHeaderSetHeaderValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory AuthzPolicyHttpRuleToNotOperationHeaderSetHeader.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleToNotOperationHeaderSetHeader(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (AuthzPolicyHttpRuleToNotOperationHeaderSetHeaderValue.fromMap((map['value'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

