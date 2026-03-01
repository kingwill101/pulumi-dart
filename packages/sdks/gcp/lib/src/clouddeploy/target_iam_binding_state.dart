// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_iam_binding_condition.dart';

/// Input properties used for looking up and filtering TargetIamBinding resources.
class TargetIamBindingState {
  final pulumi.Input<TargetIamBindingCondition>? condition;
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>>? members;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? role;

  /// Creates a new [TargetIamBindingState].
  /// [condition] Optional.
  /// [etag] Optional.
  /// [location] Optional.
  /// [members] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Optional.
  TargetIamBindingState({
    pulumi.Output<TargetIamBindingCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<TargetIamBindingCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<TargetIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'location': ?location,
      'members': ?members,
      'name': ?name,
      'project': ?project,
      'role': ?role,
    };
  }

  factory TargetIamBindingState.fromMap(Map<String, dynamic> map) {
    return TargetIamBindingState(
      condition: map['condition'] == null ? null : pulumi.Output.create<TargetIamBindingCondition>(TargetIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

