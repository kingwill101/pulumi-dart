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
    pulumi.Output<InstanceIamBindingCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<List<String>>? members,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<InstanceIamBindingCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asOptionalInput<String>(role);

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
      condition: map['condition'] == null ? null : pulumi.Output.create<InstanceIamBindingCondition>(InstanceIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

