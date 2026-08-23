// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_rule_local_data.dart';

/// {@template pulumi_dns_response_policy_rule_response_policy_rule_args_doc}
/// The set of arguments for ResponsePolicyRule.
/// {@endtemplate}
/// {@macro pulumi_dns_response_policy_rule_response_policy_rule_args_doc}
class ResponsePolicyRuleArgs {
  /// (Optional, Beta)
  /// Answer this query with a behavior rather than DNS data. Acceptable values are 'behaviorUnspecified', and 'bypassResponsePolicy'
  final pulumi.Input<String>? behavior;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [behavior] (Optional, Beta)
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [dnsName] The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  /// [localData] Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name;
  /// [project] The ID of the project in which the resource belongs.
  /// [responsePolicy] Identifies the response policy addressed by this request.
  /// [ruleName] An identifier for this rule. Must be unique with the ResponsePolicy.
  const ResponsePolicyRuleArgs({
    this.behavior,
    this.deletionPolicy,
    required this.dnsName,
    this.localData,
    this.project,
    required this.responsePolicy,
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': ?behavior,
      'deletionPolicy': ?deletionPolicy,
      'dnsName': dnsName,
      'localData': ?pulumi.Input.mapOptionalInputValue<ResponsePolicyRuleLocalData, Map<String, dynamic>>(localData, (value) => value.toMap()),
      'project': ?project,
      'responsePolicy': responsePolicy,
      'ruleName': ruleName,
    };
  }

  factory ResponsePolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyRuleArgs(
      behavior: (() { final guardedValue = map['behavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsName: pulumi.Input.fromValue(map['dnsName'] as String),
      localData: (() { final guardedValue = map['localData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResponsePolicyRuleLocalData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responsePolicy: pulumi.Input.fromValue(map['responsePolicy'] as String),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
    );
  }
}
