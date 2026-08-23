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
  const CustomTargetTypeIamBindingState({
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
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomTargetTypeIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
