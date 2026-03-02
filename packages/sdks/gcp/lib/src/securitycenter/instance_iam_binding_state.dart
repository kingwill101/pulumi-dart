// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_binding_condition.dart';

/// Input properties used for looking up and filtering InstanceIamBinding resources.
class InstanceIamBindingState {
  final pulumi.Input<InstanceIamBindingCondition>? condition;
  final pulumi.Input<String>? etag;
  final pulumi.Input<List<String>>? members;
  /// The ID of the instance or a fully qualified identifier for the instance.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the Data Fusion instance.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? role;

  /// Creates a new [InstanceIamBindingState].
  /// [condition] Optional.
  /// [etag] Optional.
  /// [members] Optional.
  /// [name] The ID of the instance or a fully qualified identifier for the instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the Data Fusion instance.
  /// [role] Optional.
  InstanceIamBindingState({
    this.condition,
    this.etag,
    this.members,
    this.name,
    this.project,
    this.region,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<InstanceIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'members': ?members,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'role': ?role,
    };
  }

  factory InstanceIamBindingState.fromMap(Map<String, dynamic> map) {
    return InstanceIamBindingState(
      condition: map['condition'] == null ? null : (InstanceIamBindingCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      members: map['members'] == null ? null : ((map['members']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
    );
  }
}

