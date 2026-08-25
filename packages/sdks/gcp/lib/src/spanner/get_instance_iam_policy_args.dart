// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_get_instance_iam_policy_get_instance_iam_policy_args_doc}
/// Arguments for getInstanceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_spanner_get_instance_iam_policy_get_instance_iam_policy_args_doc}
class GetInstanceIamPolicyArgs {
  /// The name of the instance.
  final pulumi.Input<String> instance;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetInstanceIamPolicyArgs].
  /// [instance] The name of the instance.
  /// [project] The ID of the project in which the resource belongs. If it
  const GetInstanceIamPolicyArgs({
    required this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'project': ?project,
    };
  }

  factory GetInstanceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceIamPolicyArgs(
      instance: pulumi.Input.fromValue(map['instance'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
