// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_machine_image_iam_policy_get_machine_image_iam_policy_args_doc}
/// Arguments for getMachineImageIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_machine_image_iam_policy_get_machine_image_iam_policy_args_doc}
class GetMachineImageIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> machineImage;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetMachineImageIamPolicyArgs].
  /// [machineImage] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  const GetMachineImageIamPolicyArgs({
    required this.machineImage,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineImage': machineImage,
      'project': ?project,
    };
  }

  factory GetMachineImageIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineImageIamPolicyArgs(
      machineImage: pulumi.Input.fromValue(map['machineImage'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
