// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_iam_member_condition.dart';

/// {@template pulumi_dataplex_task_iam_member_task_iam_member_args_doc}
/// The set of arguments for TaskIamMember.
/// {@endtemplate}
/// {@macro pulumi_dataplex_task_iam_member_task_iam_member_args_doc}
class TaskIamMemberArgs {
  final pulumi.Input<TaskIamMemberCondition>? condition;
  /// The lake in which the task will be created in.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> lake;
  /// The location in which the task will be created in.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  final pulumi.Input<String> member;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The role that should be applied. Only one
  /// `gcp.dataplex.TaskIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> taskId;

  /// Creates a new [TaskIamMemberArgs].
  /// [condition] Optional.
  /// [lake] The lake in which the task will be created in.
  /// [location] The location in which the task will be created in.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  /// [taskId] Used to find the parent resource to bind the IAM policy to
  TaskIamMemberArgs({
    this.condition,
    required this.lake,
    this.location,
    required this.member,
    this.project,
    required this.role,
    required this.taskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<TaskIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'lake': lake,
      'location': ?location,
      'member': member,
      'project': ?project,
      'role': role,
      'taskId': taskId,
    };
  }

  factory TaskIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return TaskIamMemberArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lake: pulumi.Input.fromValue(map['lake'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      member: pulumi.Input.fromValue(map['member'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
      taskId: pulumi.Input.fromValue(map['taskId'] as String),
    );
  }
}

