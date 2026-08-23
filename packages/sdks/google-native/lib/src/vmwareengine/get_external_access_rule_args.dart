// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_external_access_rule_args_doc}
/// Arguments for getExternalAccessRule.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_external_access_rule_args_doc}
class GetExternalAccessRuleArgs {
  final pulumi.Input<String> externalAccessRuleId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> networkPolicyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetExternalAccessRuleArgs].
  /// [externalAccessRuleId] Required.
  /// [location] Required.
  /// [networkPolicyId] Required.
  /// [project] Optional.
  const GetExternalAccessRuleArgs({
    required this.externalAccessRuleId,
    required this.location,
    required this.networkPolicyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalAccessRuleId': externalAccessRuleId,
      'location': location,
      'networkPolicyId': networkPolicyId,
      'project': ?project,
    };
  }

  factory GetExternalAccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetExternalAccessRuleArgs(
      externalAccessRuleId: pulumi.Input.fromValue(map['externalAccessRuleId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      networkPolicyId: pulumi.Input.fromValue(map['networkPolicyId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
