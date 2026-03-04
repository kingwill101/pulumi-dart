// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1beta2_get_response_policy_rule_dns_v1beta2_args_doc}
/// Arguments for getResponsePolicyRule.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_get_response_policy_rule_dns_v1beta2_args_doc}
class GetResponsePolicyRuleDnsV1beta2Args {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> responsePolicy;
  final pulumi.Input<String> responsePolicyRule;

  /// Creates a new [GetResponsePolicyRuleDnsV1beta2Args].
  /// [clientOperationId] Optional.
  /// [project] Optional.
  /// [responsePolicy] Required.
  /// [responsePolicyRule] Required.
  GetResponsePolicyRuleDnsV1beta2Args({
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

  factory GetResponsePolicyRuleDnsV1beta2Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResponsePolicyRuleDnsV1beta2Args(
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
