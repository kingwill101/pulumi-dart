// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_iam_binding_condition.dart';

/// Input properties used for looking up and filtering CustomTargetTypeIamBinding resources.
class CustomTargetTypeIamBindingState {
  final pulumi.Input<CustomTargetTypeIamBindingCondition>? condition;
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>>? members;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? role;

  /// Creates a new [CustomTargetTypeIamBindingState].
  /// [condition] Optional.
  /// [etag] Optional.
  /// [location] Optional.
  /// [members] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Optional.
  CustomTargetTypeIamBindingState({
    this.condition,
    this.etag,
    this.location,
    this.members,
    this.name,
    this.project,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<CustomTargetTypeIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'location': ?location,
      'members': ?members,
      'name': ?name,
      'project': ?project,
      'role': ?role,
    };
  }

  factory CustomTargetTypeIamBindingState.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeIamBindingState(
      condition: map['condition'] == null ? null : (CustomTargetTypeIamBindingCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      members: map['members'] == null ? null : ((map['members']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
    );
  }
}

