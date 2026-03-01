// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_rule_args_doc}
/// Arguments for getRule.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_rule_args_doc}
class GetRuleArgs {
  final pulumi.Input<String> gatewaySecurityPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> ruleId;

  /// Creates a new [GetRuleArgs].
  /// [gatewaySecurityPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [ruleId] Required.
  GetRuleArgs({
    required pulumi.Output<String> gatewaySecurityPolicyId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> ruleId,
  }) :
      gatewaySecurityPolicyId = pulumi.Input.asInput<String>(gatewaySecurityPolicyId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      ruleId = pulumi.Input.asInput<String>(ruleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewaySecurityPolicyId': gatewaySecurityPolicyId,
      'location': location,
      'project': ?project,
      'ruleId': ruleId,
    };
  }

  factory GetRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleArgs(
      gatewaySecurityPolicyId: pulumi.Output.create<String>(map['gatewaySecurityPolicyId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      ruleId: pulumi.Output.create<String>(map['ruleId'] as String),
    );
  }
}

