// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProjectInfo resources.
class ProjectInfoState {
  /// The ID of the billing account associated with the project, if
  /// any. Set to empty string to disable billing for the project.
  /// For example, `"012345-567890-ABCDEF"` or `""`.
  final pulumi.Input<String>? billingAccount;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectInfoState].
  /// [billingAccount] The ID of the billing account associated with the project, if
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [project] The ID of the project in which the resource belongs.
  const ProjectInfoState({
    this.billingAccount,
    this.deletionPolicy,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccount': ?billingAccount,
      'deletionPolicy': ?deletionPolicy,
      'project': ?project,
    };
  }

  factory ProjectInfoState.fromMap(Map<String, dynamic> map) {
    return ProjectInfoState(
      billingAccount: (() { final guardedValue = map['billingAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
