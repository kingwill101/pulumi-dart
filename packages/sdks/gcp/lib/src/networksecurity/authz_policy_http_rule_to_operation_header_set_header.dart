// ignore_for_file: unused_element, unnecessary_cast

import 'authz_policy_http_rule_to_operation_header_set_header_value.dart';

class AuthzPolicyHttpRuleToOperationHeaderSetHeader {
  /// Specifies the name of the header in the request.
  final String? name;
  /// Specifies how the header match will be performed.
  /// Structure is documented below.
  final AuthzPolicyHttpRuleToOperationHeaderSetHeaderValue? value;

  /// Creates a new [AuthzPolicyHttpRuleToOperationHeaderSetHeader].
  /// [name] Specifies the name of the header in the request.
  /// [value] Specifies how the header match will be performed.
  AuthzPolicyHttpRuleToOperationHeaderSetHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value == null ? null : value!.toMap(),
    };
  }

  factory AuthzPolicyHttpRuleToOperationHeaderSetHeader.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleToOperationHeaderSetHeader(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : AuthzPolicyHttpRuleToOperationHeaderSetHeaderValue.fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

