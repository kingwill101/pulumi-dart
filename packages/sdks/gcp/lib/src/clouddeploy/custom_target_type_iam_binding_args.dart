// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_iam_binding_condition.dart';

/// {@template pulumi_clouddeploy_custom_target_type_iam_binding_custom_target_type_iam_binding_args_doc}
/// The set of arguments for CustomTargetTypeIamBinding.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_custom_target_type_iam_binding_custom_target_type_iam_binding_args_doc}
class CustomTargetTypeIamBindingArgs {
  final pulumi.Input<CustomTargetTypeIamBindingCondition>? condition;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [CustomTargetTypeIamBindingArgs].
  /// [condition] Optional.
  /// [location] Optional.
  /// [members] Required.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Required.
  CustomTargetTypeIamBindingArgs({
    pulumi.Output<CustomTargetTypeIamBindingCondition>? condition,
    pulumi.Output<String>? location,
    required pulumi.Output<List<String>> members,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> role,
  }) :
      condition = pulumi.Input.asOptionalInput<CustomTargetTypeIamBindingCondition>(condition),
      location = pulumi.Input.asOptionalInput<String>(location),
      members = pulumi.Input.asInput<List<String>>(members),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<CustomTargetTypeIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'location': ?location,
      'members': members,
      'name': ?name,
      'project': ?project,
      'role': role,
    };
  }

  factory CustomTargetTypeIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeIamBindingArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<CustomTargetTypeIamBindingCondition>(CustomTargetTypeIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      members: pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

