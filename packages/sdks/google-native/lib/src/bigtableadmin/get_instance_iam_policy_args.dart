// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtableadmin_v2_get_instance_iam_policy_args_doc}
/// Arguments for getInstanceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigtableadmin_v2_get_instance_iam_policy_args_doc}
class GetInstanceIamPolicyArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceIamPolicyArgs].
  /// [instanceId] Required.
  /// [project] Optional.
  GetInstanceIamPolicyArgs({
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? project,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'project': ?project,
    };
  }

  factory GetInstanceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceIamPolicyArgs(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

