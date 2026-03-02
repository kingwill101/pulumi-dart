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
    required this.gatewaySecurityPolicyId,
    required this.location,
    this.project,
    required this.ruleId,
  });

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
      gatewaySecurityPolicyId: (map['gatewaySecurityPolicyId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      ruleId: (map['ruleId'] as String).input(),
    );
  }
}

