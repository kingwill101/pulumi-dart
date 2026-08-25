// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_iam_binding_condition.dart';

/// {@template pulumi_clouddeploy_delivery_pipeline_iam_binding_delivery_pipeline_iam_binding_args_doc}
/// The set of arguments for DeliveryPipelineIamBinding.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_delivery_pipeline_iam_binding_delivery_pipeline_iam_binding_args_doc}
class DeliveryPipelineIamBindingArgs {
  final pulumi.Input<DeliveryPipelineIamBindingCondition?>? condition;
  final pulumi.Input<String?>? location;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? project;
  final pulumi.Input<String> role;

  /// Creates a new [DeliveryPipelineIamBindingArgs].
  /// [condition] Optional.
  /// [location] Optional.
  /// [members] Required.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Required.
  const DeliveryPipelineIamBindingArgs({
    this.condition,
    this.location,
    required this.members,
    this.name,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineIamBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'location': ?location,
      'members': members,
      'name': ?name,
      'project': ?project,
      'role': role,
    };
  }

  factory DeliveryPipelineIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineIamBindingArgs(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
