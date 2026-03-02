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
    this.condition,
    this.etag,
    this.instanceId,
    this.location,
    this.members,
    this.project,
    this.role,
  });

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
      condition: map['condition'] == null ? null : (InstanceIamBindingCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      members: map['members'] == null ? null : ((map['members']! as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
    );
  }
}

