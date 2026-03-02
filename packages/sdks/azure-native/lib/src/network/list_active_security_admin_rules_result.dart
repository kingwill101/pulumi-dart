// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_default_security_admin_rule_response.dart';

/// Result data returned by listActiveSecurityAdminRules.
class ListActiveSecurityAdminRulesResult {
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final String? skipToken;
  /// Gets a page of active security admin rules.
  final List<ActiveDefaultSecurityAdminRuleResponse>? value;

  /// Creates a new [ListActiveSecurityAdminRulesResult].
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [value] Gets a page of active security admin rules.
  ListActiveSecurityAdminRulesResult({
    this.skipToken,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skipToken': ?skipToken,
      'value': ?value == null ? null : pulumi.Input.encodeList<ActiveDefaultSecurityAdminRuleResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListActiveSecurityAdminRulesResult.fromMap(Map<String, dynamic> map) {
    return ListActiveSecurityAdminRulesResult(
      skipToken: map['skipToken'] == null ? null : map['skipToken']! as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<ActiveDefaultSecurityAdminRuleResponse>(map['value']!, (value) => ActiveDefaultSecurityAdminRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

