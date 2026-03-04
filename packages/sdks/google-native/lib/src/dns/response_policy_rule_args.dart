// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_rule_behavior_dns_v1beta2.dart';
import 'response_policy_rule_local_data_dns_v1beta2.dart';

/// {@template pulumi_dns_v1beta2_response_policy_rule_args_doc}
/// The set of arguments for ResponsePolicyRule.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_response_policy_rule_args_doc}
class ResponsePolicyRuleArgs {
  /// Answer this query with a behavior rather than DNS data.
  final pulumi.Input<ResponsePolicyRuleBehaviorDnsV1beta2>? behavior;

  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;

  /// The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  final pulumi.Input<String>? dnsName;
  final pulumi.Input<String>? kind;

  /// Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name; in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  final pulumi.Input<ResponsePolicyRuleLocalDataDnsV1beta2>? localData;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> responsePolicy;

  /// An identifier for this rule. Must be unique with the ResponsePolicy.
  final pulumi.Input<String>? ruleName;

  /// Creates a new [ResponsePolicyRuleArgs].
  /// [behavior] Answer this query with a behavior rather than DNS data.
  /// [clientOperationId] For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  /// [dnsName] The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  /// [kind] Optional.
  /// [localData] Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name; in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  /// [project] Optional.
  /// [responsePolicy] Required.
  /// [ruleName] An identifier for this rule. Must be unique with the ResponsePolicy.
  ResponsePolicyRuleArgs({
    this.behavior,
    this.clientOperationId,
    this.dnsName,
    this.kind,
    this.localData,
    this.project,
    required this.responsePolicy,
    this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior':
          ?pulumi.Input.mapOptionalInputValue<
            ResponsePolicyRuleBehaviorDnsV1beta2,
            String
          >(behavior, (value) => value.wireValue),
      'clientOperationId': ?clientOperationId,
      'dnsName': ?dnsName,
      'kind': ?kind,
      'localData':
          ?pulumi.Input.mapOptionalInputValue<
            ResponsePolicyRuleLocalDataDnsV1beta2,
            Map<String, dynamic>
          >(localData, (value) => value.toMap()),
      'project': ?project,
      'responsePolicy': responsePolicy,
      'ruleName': ?ruleName,
    };
  }

  factory ResponsePolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyRuleArgs(
      behavior: (() {
        final guardedValue = map['behavior'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResponsePolicyRuleBehaviorDnsV1beta2.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      clientOperationId: (() {
        final guardedValue = map['clientOperationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnsName: (() {
        final guardedValue = map['dnsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localData: (() {
        final guardedValue = map['localData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResponsePolicyRuleLocalDataDnsV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      responsePolicy: pulumi.Input.fromValue(map['responsePolicy'] as String),
      ruleName: (() {
        final guardedValue = map['ruleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
