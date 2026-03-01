// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_binding_condition.dart';

/// Input properties used for looking up and filtering InstanceIamBinding resources.
class InstanceIamBindingState {
  final pulumi.Input<InstanceIamBindingCondition>? condition;
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? instanceId;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>>? members;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? role;

  /// Creates a new [InstanceIamBindingState].
  /// [condition] Optional.
  /// [etag] Optional.
  /// [instanceId] Optional.
  /// [location] Optional.
  /// [members] Optional.
  /// [project] Optional.
  /// [role] Optional.
  InstanceIamBindingState({
    pulumi.Output<InstanceIamBindingCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? location,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? project,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<InstanceIamBindingCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      location = pulumi.Input.asOptionalInput<String>(location),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<InstanceIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'instanceId': ?instanceId,
      'location': ?location,
      'members': ?members,
      'project': ?project,
      'role': ?role,
    };
  }

  factory InstanceIamBindingState.fromMap(Map<String, dynamic> map) {
    return InstanceIamBindingState(
      condition: map['condition'] == null ? null : pulumi.Output.create<InstanceIamBindingCondition>(InstanceIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

