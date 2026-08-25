// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_target_iam_policy_target_iam_policy_args_doc}
/// The set of arguments for TargetIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_target_iam_policy_target_iam_policy_args_doc}
class TargetIamPolicyArgs {
  final pulumi.Input<String?>? location;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String?>? project;

  /// Creates a new [TargetIamPolicyArgs].
  /// [location] Optional.
  /// [name] Optional.
  /// [policyData] Required.
  /// [project] Optional.
  const TargetIamPolicyArgs({
    this.location,
    this.name,
    required this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'policyData': policyData,
      'project': ?project,
    };
  }

  factory TargetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TargetIamPolicyArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyData: pulumi.Input.fromValue(map['policyData'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
