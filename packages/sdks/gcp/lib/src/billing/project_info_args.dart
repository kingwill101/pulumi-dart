// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_project_info_project_info_args_doc}
/// The set of arguments for ProjectInfo.
/// {@endtemplate}
/// {@macro pulumi_billing_project_info_project_info_args_doc}
class ProjectInfoArgs {
  /// The ID of the billing account associated with the project, if
  /// any. Set to empty string to disable billing for the project.
  /// For example, `"012345-567890-ABCDEF"` or `""`.
  final pulumi.Input<String> billingAccount;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectInfoArgs].
  /// [billingAccount] The ID of the billing account associated with the project, if
  /// [project] The ID of the project in which the resource belongs.
  ProjectInfoArgs({
    required this.billingAccount,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccount': billingAccount,
      'project': ?project,
    };
  }

  factory ProjectInfoArgs.fromMap(Map<String, dynamic> map) {
    return ProjectInfoArgs(
      billingAccount: (map['billingAccount'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

