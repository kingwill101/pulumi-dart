// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_binding_condition.dart';

/// {@template pulumi_workbench_instance_iam_binding_instance_iam_binding_args_doc}
/// The set of arguments for InstanceIamBinding.
/// {@endtemplate}
/// {@macro pulumi_workbench_instance_iam_binding_instance_iam_binding_args_doc}
class InstanceIamBindingArgs {
  final pulumi.Input<InstanceIamBindingCondition>? condition;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [InstanceIamBindingArgs].
  /// [condition] Optional.
  /// [location] Optional.
  /// [members] Required.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Required.
  InstanceIamBindingArgs({
    pulumi.Output<InstanceIamBindingCondition>? condition,
    pulumi.Output<String>? location,
    required pulumi.Output<List<String>> members,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> role,
  }) :
      condition = pulumi.Input.asOptionalInput<InstanceIamBindingCondition>(condition),
      location = pulumi.Input.asOptionalInput<String>(location),
      members = pulumi.Input.asInput<List<String>>(members),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<InstanceIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'location': ?location,
      'members': members,
      'name': ?name,
      'project': ?project,
      'role': role,
    };
  }

  factory InstanceIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamBindingArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<InstanceIamBindingCondition>(InstanceIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      members: pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

