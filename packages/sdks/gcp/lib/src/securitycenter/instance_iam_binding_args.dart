// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_binding_condition.dart';

/// {@template pulumi_securitycenter_instance_iam_binding_instance_iam_binding_args_doc}
/// The set of arguments for InstanceIamBinding.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_instance_iam_binding_instance_iam_binding_args_doc}
class InstanceIamBindingArgs {
  final pulumi.Input<InstanceIamBindingCondition>? condition;
  final pulumi.Input<List<String>> members;
  /// The ID of the instance or a fully qualified identifier for the instance.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the Data Fusion instance.
  final pulumi.Input<String>? region;
  final pulumi.Input<String> role;

  /// Creates a new [InstanceIamBindingArgs].
  /// [condition] Optional.
  /// [members] Required.
  /// [name] The ID of the instance or a fully qualified identifier for the instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the Data Fusion instance.
  /// [role] Required.
  InstanceIamBindingArgs({
    pulumi.Output<InstanceIamBindingCondition>? condition,
    required pulumi.Output<List<String>> members,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    required pulumi.Output<String> role,
  }) :
      condition = pulumi.Input.asOptionalInput<InstanceIamBindingCondition>(condition),
      members = pulumi.Input.asInput<List<String>>(members),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<InstanceIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'members': members,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'role': role,
    };
  }

  factory InstanceIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamBindingArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<InstanceIamBindingCondition>(InstanceIamBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      members: pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

