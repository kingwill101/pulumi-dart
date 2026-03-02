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
    this.condition,
    this.location,
    required this.members,
    this.name,
    this.project,
    required this.role,
  });

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
      condition: map['condition'] == null ? null : (TargetIamBindingCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      members: ((map['members'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      role: (map['role'] as String).input(),
    );
  }
}

