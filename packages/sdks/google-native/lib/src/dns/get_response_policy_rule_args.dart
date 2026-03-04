// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1_get_response_policy_rule_args_doc}
/// Arguments for getResponsePolicyRule.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_get_response_policy_rule_args_doc}
class GetResponsePolicyRuleArgs {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> responsePolicy;
  final pulumi.Input<String> responsePolicyRule;

  /// Creates a new [GetResponsePolicyRuleArgs].
  /// [clientOperationId] Optional.
  /// [project] Optional.
  /// [responsePolicy] Required.
  /// [responsePolicyRule] Required.
  GetResponsePolicyRuleArgs({
    this.clientOperationId,
    this.project,
    required this.responsePolicy,
    required this.responsePolicyRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'project': ?project,
      'responsePolicy': responsePolicy,
      'responsePolicyRule': responsePolicyRule,
    };
  }

  factory GetResponsePolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyRuleArgs(
      clientOperationId: (() {
        final guardedValue = map['clientOperationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      responsePolicy: pulumi.Input.fromValue(map['responsePolicy'] as String),
      responsePolicyRule: pulumi.Input.fromValue(
        map['responsePolicyRule'] as String,
      ),
    );
  }
}
