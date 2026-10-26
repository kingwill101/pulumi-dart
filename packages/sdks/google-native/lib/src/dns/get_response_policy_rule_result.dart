// ignore_for_file: unused_element, unnecessary_cast

import 'response_policy_rule_local_data_response.dart';

/// Result data returned by getResponsePolicyRule.
class GetResponsePolicyRuleResult {
  /// Answer this query with a behavior rather than DNS data.
  final String? behavior;
  /// The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  final String? dnsName;
  final String? kind;
  /// Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name; in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  final ResponsePolicyRuleLocalDataResponse? localData;
  /// An identifier for this rule. Must be unique with the ResponsePolicy.
  final String? ruleName;

  /// Creates a new [GetResponsePolicyRuleResult].
  /// [behavior] Answer this query with a behavior rather than DNS data.
  /// [dnsName] The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  /// [kind] Optional.
  /// [localData] Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name; in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  /// [ruleName] An identifier for this rule. Must be unique with the ResponsePolicy.
  const GetResponsePolicyRuleResult({
    this.behavior,
    this.dnsName,
    this.kind,
    this.localData,
    this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': ?behavior,
      'dnsName': ?dnsName,
      'kind': ?kind,
      'localData': ?localData?.toMap(),
      'ruleName': ?ruleName,
    };
  }

  factory GetResponsePolicyRuleResult.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyRuleResult(
      behavior: (() { final guardedValue = map['behavior']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localData: (() { final guardedValue = map['localData']; if (guardedValue == null) return null; return ResponsePolicyRuleLocalDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
