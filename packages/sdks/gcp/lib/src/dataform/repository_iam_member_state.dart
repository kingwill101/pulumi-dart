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
    this.condition,
    this.etag,
    this.member,
    this.project,
    this.region,
    this.repository,
    this.role,
  });

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
      condition: map['condition'] == null ? null : (RepositoryIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      member: map['member'] == null ? null : (map['member'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      repository: map['repository'] == null ? null : (map['repository'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
    );
  }
}

