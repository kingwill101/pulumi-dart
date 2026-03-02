// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securesourcemanager_instance_iam_policy_instance_iam_policy_args_doc}
/// The set of arguments for InstanceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_securesourcemanager_instance_iam_policy_instance_iam_policy_args_doc}
class InstanceIamPolicyArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;

  /// Creates a new [InstanceIamPolicyArgs].
  /// [instanceId] Required.
  /// [location] Optional.
  /// [policyData] Required.
  /// [project] Optional.
  InstanceIamPolicyArgs({
    required this.instanceId,
    this.location,
    required this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'location': ?location,
      'policyData': policyData,
      'project': ?project,
    };
  }

  factory InstanceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamPolicyArgs(
      instanceId: (map['instanceId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      policyData: (map['policyData'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

