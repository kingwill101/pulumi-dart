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
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            TargetIamBindingCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
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
      condition: (() {
        final guardedValue = map['condition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TargetIamBindingCondition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      members: (() {
        final guardedValue = map['members'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      role: (() {
        final guardedValue = map['role'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
