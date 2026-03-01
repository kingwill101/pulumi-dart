// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_iam_binding_condition.dart';

/// {@template pulumi_clouddeploy_target_iam_binding_target_iam_binding_args_doc}
/// The set of arguments for TargetIamBinding.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_target_iam_binding_target_iam_binding_args_doc}
class TargetIamBindingArgs {
  final pulumi.Input<TargetIamBindingCondition>? condition;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [TargetIamBindingArgs].
  /// [condition] Optional.
  /// [location] Optional.
  /// [members] Required.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Required.
  TargetIamBindingArgs({
    pulumi.Output<TargetIamBindingCondition>? condition,
    pulumi.Output<String>? location,
    required pulumi.Output<List<String>> members,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> role,
  }) :
      condition = pulumi.Input.asOptionalInput<TargetIamBindingCondition>(condition),
      location = pulumi.Input.asOptionalInput<String>(location),
      members = pulumi.Input.asInput<List<String>>(members),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<TargetIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'location': ?location,
      'members': members,
      'name': ?name,
      'project': ?project,
      'role': role,
    };
  }

  factory TargetIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return TargetIamBindingArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<TargetIamBindingCondition>(TargetIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      members: pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

