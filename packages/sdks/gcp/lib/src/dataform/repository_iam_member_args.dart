// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_member_condition.dart';

/// {@template pulumi_dataform_repository_iam_member_repository_iam_member_args_doc}
/// The set of arguments for RepositoryIamMember.
/// {@endtemplate}
/// {@macro pulumi_dataform_repository_iam_member_repository_iam_member_args_doc}
class RepositoryIamMemberArgs {
  final pulumi.Input<RepositoryIamMemberCondition>? condition;
  final pulumi.Input<String> member;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;
  final pulumi.Input<String> repository;
  final pulumi.Input<String> role;

  /// Creates a new [RepositoryIamMemberArgs].
  /// [condition] Optional.
  /// [member] Required.
  /// [project] Optional.
  /// [region] Optional.
  /// [repository] Required.
  /// [role] Required.
  RepositoryIamMemberArgs({
    this.condition,
    required this.member,
    this.project,
    this.region,
    required this.repository,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<RepositoryIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'member': member,
      'project': ?project,
      'region': ?region,
      'repository': repository,
      'role': role,
    };
  }

  factory RepositoryIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryIamMemberArgs(
      condition: map['condition'] == null ? null : (RepositoryIamMemberCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      member: (map['member'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      repository: (map['repository'] as String).input(),
      role: (map['role'] as String).input(),
    );
  }
}

