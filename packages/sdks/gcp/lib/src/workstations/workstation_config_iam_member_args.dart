// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workstation_config_iam_member_condition.dart';

/// {@template pulumi_workstations_workstation_config_iam_member_workstation_config_iam_member_args_doc}
/// The set of arguments for WorkstationConfigIamMember.
/// {@endtemplate}
/// {@macro pulumi_workstations_workstation_config_iam_member_workstation_config_iam_member_args_doc}
class WorkstationConfigIamMemberArgs {
  final pulumi.Input<WorkstationConfigIamMemberCondition>? condition;
  /// The location where the workstation cluster config should reside.
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
  /// `gcp.workstations.WorkstationConfigIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;
  /// The ID of the parent workstation cluster.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> workstationClusterId;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> workstationConfigId;

  /// Creates a new [WorkstationConfigIamMemberArgs].
  /// [condition] Optional.
  /// [location] The location where the workstation cluster config should reside.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  /// [workstationClusterId] The ID of the parent workstation cluster.
  /// [workstationConfigId] Used to find the parent resource to bind the IAM policy to
  WorkstationConfigIamMemberArgs({
    this.condition,
    this.location,
    required this.member,
    this.project,
    required this.role,
    required this.workstationClusterId,
    required this.workstationConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<WorkstationConfigIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'location': ?location,
      'member': member,
      'project': ?project,
      'role': role,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
    };
  }

  factory WorkstationConfigIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigIamMemberArgs(
      condition: map['condition'] == null ? null : (WorkstationConfigIamMemberCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      member: (map['member'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      role: (map['role'] as String).input(),
      workstationClusterId: (map['workstationClusterId'] as String).input(),
      workstationConfigId: (map['workstationConfigId'] as String).input(),
    );
  }
}

