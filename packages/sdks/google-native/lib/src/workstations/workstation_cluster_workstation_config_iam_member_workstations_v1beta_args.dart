// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../accesscontextmanager/condition.dart';

/// {@template pulumi_workstations_v1beta_workstation_cluster_workstation_config_iam_member_workstations_v1beta_args_doc}
/// The set of arguments for WorkstationClusterWorkstationConfigIamMember.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1beta_workstation_cluster_workstation_config_iam_member_workstations_v1beta_args_doc}
class WorkstationClusterWorkstationConfigIamMemberWorkstationsV1betaArgs {
  /// An IAM Condition for a given binding.
  final pulumi.Input<Condition>? condition;
  /// Identity that will be granted the privilege in role. The entry can have one of the following values:
  ///
  /// * user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * group:{emailid}: An email address that represents a Google group. For example, admins@example.com.
  /// * domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String> member;
  /// The name of the resource to manage IAM policies for.
  final pulumi.Input<String> name;
  /// The role that should be applied.
  final pulumi.Input<String> role;

  /// Creates a new [WorkstationClusterWorkstationConfigIamMemberWorkstationsV1betaArgs].
  /// [condition] An IAM Condition for a given binding.
  /// [member] Identity that will be granted the privilege in role. The entry can have one of the following values:
  /// [name] The name of the resource to manage IAM policies for.
  /// [role] The role that should be applied.
  WorkstationClusterWorkstationConfigIamMemberWorkstationsV1betaArgs({
    this.condition,
    required this.member,
    required this.name,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<Condition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'member': member,
      'name': name,
      'role': role,
    };
  }

  factory WorkstationClusterWorkstationConfigIamMemberWorkstationsV1betaArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationClusterWorkstationConfigIamMemberWorkstationsV1betaArgs(
      condition: map['condition'] == null ? null : (Condition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      member: (map['member'] as String).input(),
      name: (map['name'] as String).input(),
      role: (map['role'] as String).input(),
    );
  }
}

