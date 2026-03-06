// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_default_security_user_rule_response.dart';

/// Result data returned by listActiveSecurityUserRule.
class ListActiveSecurityUserRuleResult {
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final String? skipToken;
  /// Gets a page of active security user rules.
  final List<ActiveDefaultSecurityUserRuleResponse>? value;

  /// Creates a new [ListActiveSecurityUserRuleResult].
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [value] Gets a page of active security user rules.
  const ListActiveSecurityUserRuleResult({
    this.skipToken,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skipToken': ?skipToken,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ActiveDefaultSecurityUserRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListActiveSecurityUserRuleResult.fromMap(Map<String, dynamic> map) {
    return ListActiveSecurityUserRuleResult(
      skipToken: (() { final guardedValue = map['skipToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ActiveDefaultSecurityUserRuleResponse>(guardedValue, (value) => ActiveDefaultSecurityUserRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

