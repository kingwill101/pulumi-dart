// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_binding_condition.dart';

/// Input properties used for looking up and filtering RepositoryIamBinding resources.
class RepositoryIamBindingState {
  final pulumi.Input<RepositoryIamBindingCondition>? condition;
  final pulumi.Input<String>? etag;
  final pulumi.Input<List<String>>? members;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? repository;
  final pulumi.Input<String>? role;

  /// Creates a new [RepositoryIamBindingState].
  /// [condition] Optional.
  /// [etag] Optional.
  /// [members] Optional.
  /// [project] Optional.
  /// [region] Optional.
  /// [repository] Optional.
  /// [role] Optional.
  RepositoryIamBindingState({
    this.condition,
    this.etag,
    this.members,
    this.project,
    this.region,
    this.repository,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<RepositoryIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'members': ?members,
      'project': ?project,
      'region': ?region,
      'repository': ?repository,
      'role': ?role,
    };
  }

  factory RepositoryIamBindingState.fromMap(Map<String, dynamic> map) {
    return RepositoryIamBindingState(
      condition: map['condition'] == null ? null : (RepositoryIamBindingCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      members: map['members'] == null ? null : ((map['members']! as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      repository: map['repository'] == null ? null : (map['repository']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
    );
  }
}

