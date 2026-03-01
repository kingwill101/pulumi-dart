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
    pulumi.Output<RepositoryIamBindingCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? repository,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<RepositoryIamBindingCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      repository = pulumi.Input.asOptionalInput<String>(repository),
      role = pulumi.Input.asOptionalInput<String>(role);

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
      condition: map['condition'] == null ? null : pulumi.Output.create<RepositoryIamBindingCondition>(RepositoryIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repository: map['repository'] == null ? null : pulumi.Output.create<String>(map['repository'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

