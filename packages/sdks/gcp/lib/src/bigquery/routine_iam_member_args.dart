// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routine_iam_member_condition.dart';

/// {@template pulumi_bigquery_routine_iam_member_routine_iam_member_args_doc}
/// The set of arguments for RoutineIamMember.
/// {@endtemplate}
/// {@macro pulumi_bigquery_routine_iam_member_routine_iam_member_args_doc}
class RoutineIamMemberArgs {
  final pulumi.Input<RoutineIamMemberCondition?>? condition;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> datasetId;
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
  final pulumi.Input<String?>? project;
  /// The role that should be applied. Only one
  /// `gcp.bigquery.RoutineIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> routineId;

  /// Creates a new [RoutineIamMemberArgs].
  /// [condition] Optional.
  /// [datasetId] Used to find the parent resource to bind the IAM policy to
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  /// [routineId] Used to find the parent resource to bind the IAM policy to
  const RoutineIamMemberArgs({
    this.condition,
    required this.datasetId,
    required this.member,
    this.project,
    required this.role,
    required this.routineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<RoutineIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'datasetId': datasetId,
      'member': member,
      'project': ?project,
      'role': role,
      'routineId': routineId,
    };
  }

  factory RoutineIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return RoutineIamMemberArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutineIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      member: pulumi.Input.fromValue(map['member'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
      routineId: pulumi.Input.fromValue(map['routineId'] as String),
    );
  }
}
