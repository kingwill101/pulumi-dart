// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProjectInfo resources.
class ProjectInfoState {
  /// The ID of the billing account associated with the project, if
  /// any. Set to empty string to disable billing for the project.
  /// For example, `"012345-567890-ABCDEF"` or `""`.
  final pulumi.Input<String>? billingAccount;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectInfoState].
  /// [billingAccount] The ID of the billing account associated with the project, if
  /// [project] The ID of the project in which the resource belongs.
  ProjectInfoState({
    pulumi.Output<String>? billingAccount,
    pulumi.Output<String>? project,
  }) :
      billingAccount = pulumi.Input.asOptionalInput<String>(billingAccount),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccount': ?billingAccount,
      'project': ?project,
    };
  }

  factory ProjectInfoState.fromMap(Map<String, dynamic> map) {
    return ProjectInfoState(
      billingAccount: map['billingAccount'] == null ? null : pulumi.Output.create<String>(map['billingAccount'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

