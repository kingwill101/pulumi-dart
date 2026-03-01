// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_rule_local_data.dart';

/// {@template pulumi_dns_response_policy_rule_response_policy_rule_args_doc}
/// The set of arguments for ResponsePolicyRule.
/// {@endtemplate}
/// {@macro pulumi_dns_response_policy_rule_response_policy_rule_args_doc}
class ResponsePolicyRuleArgs {
  /// Answer this query with a behavior rather than DNS data. Acceptable values are 'behaviorUnspecified', and 'bypassResponsePolicy'
  final pulumi.Input<String>? behavior;
  /// The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  final pulumi.Input<String> dnsName;
  /// Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name;
  /// in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  /// Structure is documented below.
  final pulumi.Input<ResponsePolicyRuleLocalData>? localData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Identifies the response policy addressed by this request.
  final pulumi.Input<String> responsePolicy;
  /// An identifier for this rule. Must be unique with the ResponsePolicy.
  final pulumi.Input<String> ruleName;

  /// Creates a new [ResponsePolicyRuleArgs].
  /// [behavior] Answer this query with a behavior rather than DNS data. Acceptable values are 'behaviorUnspecified', and 'bypassResponsePolicy'
  /// [dnsName] The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  /// [localData] Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name;
  /// [project] The ID of the project in which the resource belongs.
  /// [responsePolicy] Identifies the response policy addressed by this request.
  /// [ruleName] An identifier for this rule. Must be unique with the ResponsePolicy.
  ResponsePolicyRuleArgs({
    pulumi.Output<String>? behavior,
    required pulumi.Output<String> dnsName,
    pulumi.Output<ResponsePolicyRuleLocalData>? localData,
    pulumi.Output<String>? project,
    required pulumi.Output<String> responsePolicy,
    required pulumi.Output<String> ruleName,
  }) :
      behavior = pulumi.Input.asOptionalInput<String>(behavior),
      dnsName = pulumi.Input.asInput<String>(dnsName),
      localData = pulumi.Input.asOptionalInput<ResponsePolicyRuleLocalData>(localData),
      project = pulumi.Input.asOptionalInput<String>(project),
      responsePolicy = pulumi.Input.asInput<String>(responsePolicy),
      ruleName = pulumi.Input.asInput<String>(ruleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': ?behavior,
      'dnsName': dnsName,
      'localData': ?pulumi.Input.mapOptionalInputValue<ResponsePolicyRuleLocalData, Map<String, dynamic>>(localData, (value) => value.toMap()),
      'project': ?project,
      'responsePolicy': responsePolicy,
      'ruleName': ruleName,
    };
  }

  factory ResponsePolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyRuleArgs(
      behavior: map['behavior'] == null ? null : pulumi.Output.create<String>(map['behavior'] as String),
      dnsName: pulumi.Output.create<String>(map['dnsName'] as String),
      localData: map['localData'] == null ? null : pulumi.Output.create<ResponsePolicyRuleLocalData>(ResponsePolicyRuleLocalData.fromMap((map['localData'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      responsePolicy: pulumi.Output.create<String>(map['responsePolicy'] as String),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
    );
  }
}

