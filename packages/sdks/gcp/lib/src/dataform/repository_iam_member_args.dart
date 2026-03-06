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
  const RepositoryIamMemberArgs({
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
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      member: pulumi.Input.fromValue(map['member'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: pulumi.Input.fromValue(map['repository'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}

