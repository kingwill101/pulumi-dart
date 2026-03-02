// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'effective_default_security_admin_rule_response.dart';

/// Result data returned by listNetworkManagerEffectiveSecurityAdminRules.
class ListNetworkManagerEffectiveSecurityAdminRulesResult {
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final String? skipToken;
  /// Gets a page of NetworkManagerEffectiveSecurityAdminRules
  final List<EffectiveDefaultSecurityAdminRuleResponse>? value;

  /// Creates a new [ListNetworkManagerEffectiveSecurityAdminRulesResult].
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [value] Gets a page of NetworkManagerEffectiveSecurityAdminRules
  ListNetworkManagerEffectiveSecurityAdminRulesResult({
    this.skipToken,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skipToken': ?skipToken,
      'value': ?value == null ? null : pulumi.Input.encodeList<EffectiveDefaultSecurityAdminRuleResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListNetworkManagerEffectiveSecurityAdminRulesResult.fromMap(Map<String, dynamic> map) {
    return ListNetworkManagerEffectiveSecurityAdminRulesResult(
      skipToken: map['skipToken'] == null ? null : map['skipToken']! as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<EffectiveDefaultSecurityAdminRuleResponse>(map['value']!, (value) => EffectiveDefaultSecurityAdminRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

