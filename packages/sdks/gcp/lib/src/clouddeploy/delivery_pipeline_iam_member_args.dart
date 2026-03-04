// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_iam_member_condition.dart';

/// {@template pulumi_clouddeploy_delivery_pipeline_iam_member_delivery_pipeline_iam_member_args_doc}
/// The set of arguments for DeliveryPipelineIamMember.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_delivery_pipeline_iam_member_delivery_pipeline_iam_member_args_doc}
class DeliveryPipelineIamMemberArgs {
  final pulumi.Input<DeliveryPipelineIamMemberCondition>? condition;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> member;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [DeliveryPipelineIamMemberArgs].
  /// [condition] Optional.
  /// [location] Optional.
  /// [member] Required.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Required.
  DeliveryPipelineIamMemberArgs({
    this.condition,
    this.location,
    required this.member,
    this.name,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            DeliveryPipelineIamMemberCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'location': ?location,
      'member': member,
      'name': ?name,
      'project': ?project,
      'role': role,
    };
  }

  factory DeliveryPipelineIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineIamMemberArgs(
      condition: (() {
        final guardedValue = map['condition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeliveryPipelineIamMemberCondition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      member: pulumi.Input.fromValue(map['member'] as String),
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
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
