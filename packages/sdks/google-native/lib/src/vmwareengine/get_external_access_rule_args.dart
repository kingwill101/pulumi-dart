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
  GetExternalAccessRuleArgs({
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
      externalAccessRuleId: (map['externalAccessRuleId'] as String).input(),
      location: (map['location'] as String).input(),
      networkPolicyId: (map['networkPolicyId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

