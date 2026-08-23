// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_rule_local_data.dart';

/// Input properties used for looking up and filtering ResponsePolicyRule resources.
class ResponsePolicyRuleState {
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
  final pulumi.Input<String>? dnsName;
  /// Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name;
  /// in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.
  /// Structure is documented below.
  final pulumi.Input<ResponsePolicyRuleLocalData>? localData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Identifies the response policy addressed by this request.
  final pulumi.Input<String>? responsePolicy;
  /// An identifier for this rule. Must be unique with the ResponsePolicy.
  final pulumi.Input<String>? ruleName;

  /// Creates a new [ResponsePolicyRuleState].
  /// [behavior] (Optional, Beta)
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [dnsName] The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.
  /// [localData] Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name;
  /// [project] The ID of the project in which the resource belongs.
  /// [responsePolicy] Identifies the response policy addressed by this request.
  /// [ruleName] An identifier for this rule. Must be unique with the ResponsePolicy.
  const ResponsePolicyRuleState({
    this.behavior,
    this.deletionPolicy,
    this.dnsName,
    this.localData,
    this.project,
    this.responsePolicy,
    this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': ?behavior,
      'deletionPolicy': ?deletionPolicy,
      'dnsName': ?dnsName,
      'localData': ?pulumi.Input.mapOptionalInputValue<ResponsePolicyRuleLocalData, Map<String, dynamic>>(localData, (value) => value.toMap()),
      'project': ?project,
      'responsePolicy': ?responsePolicy,
      'ruleName': ?ruleName,
    };
  }

  factory ResponsePolicyRuleState.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyRuleState(
      behavior: (() { final guardedValue = map['behavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localData: (() { final guardedValue = map['localData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResponsePolicyRuleLocalData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responsePolicy: (() { final guardedValue = map['responsePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
