// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_member_condition.dart';

/// Input properties used for looking up and filtering RepositoryIamMember resources.
class RepositoryIamMemberState {
  final pulumi.Input<RepositoryIamMemberCondition>? condition;
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? member;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? repository;
  final pulumi.Input<String>? role;

  /// Creates a new [RepositoryIamMemberState].
  /// [condition] Optional.
  /// [etag] Optional.
  /// [member] Optional.
  /// [project] Optional.
  /// [region] Optional.
  /// [repository] Optional.
  /// [role] Optional.
  RepositoryIamMemberState({
    pulumi.Output<RepositoryIamMemberCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? member,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? repository,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<RepositoryIamMemberCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      member = pulumi.Input.asOptionalInput<String>(member),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      repository = pulumi.Input.asOptionalInput<String>(repository),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<RepositoryIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'member': ?member,
      'project': ?project,
      'region': ?region,
      'repository': ?repository,
      'role': ?role,
    };
  }

  factory RepositoryIamMemberState.fromMap(Map<String, dynamic> map) {
    return RepositoryIamMemberState(
      condition: map['condition'] == null ? null : pulumi.Output.create<RepositoryIamMemberCondition>(RepositoryIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repository: map['repository'] == null ? null : pulumi.Output.create<String>(map['repository'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

