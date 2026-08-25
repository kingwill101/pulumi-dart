// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_shared_vpchost_project_shared_vpchost_project_args_doc}
/// The set of arguments for SharedVPCHostProject.
/// {@endtemplate}
/// {@macro pulumi_compute_shared_vpchost_project_shared_vpchost_project_args_doc}
class SharedVPCHostProjectArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The ID of the project that will serve as a Shared VPC host project
  final pulumi.Input<String> project;

  /// Creates a new [SharedVPCHostProjectArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [project] The ID of the project that will serve as a Shared VPC host project
  const SharedVPCHostProjectArgs({
    this.deletionPolicy,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'project': project,
    };
  }

  factory SharedVPCHostProjectArgs.fromMap(Map<String, dynamic> map) {
    return SharedVPCHostProjectArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
