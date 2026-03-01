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
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? location,
    required pulumi.Output<String> policyData,
    pulumi.Output<String>? project,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      location = pulumi.Input.asOptionalInput<String>(location),
      policyData = pulumi.Input.asInput<String>(policyData),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      policyData: pulumi.Output.create<String>(map['policyData'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

