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
    pulumi.Output<RepositoryIamMemberCondition>? condition,
    required pulumi.Output<String> member,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    required pulumi.Output<String> repository,
    required pulumi.Output<String> role,
  }) :
      condition = pulumi.Input.asOptionalInput<RepositoryIamMemberCondition>(condition),
      member = pulumi.Input.asInput<String>(member),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      repository = pulumi.Input.asInput<String>(repository),
      role = pulumi.Input.asInput<String>(role);

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
      condition: map['condition'] == null ? null : pulumi.Output.create<RepositoryIamMemberCondition>(RepositoryIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      member: pulumi.Output.create<String>(map['member'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repository: pulumi.Output.create<String>(map['repository'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

