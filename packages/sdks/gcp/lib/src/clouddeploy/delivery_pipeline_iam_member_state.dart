// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_iam_member_condition.dart';

/// Input properties used for looking up and filtering DeliveryPipelineIamMember resources.
class DeliveryPipelineIamMemberState {
  final pulumi.Input<DeliveryPipelineIamMemberCondition>? condition;
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? member;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? role;

  /// Creates a new [DeliveryPipelineIamMemberState].
  /// [condition] Optional.
  /// [etag] Optional.
  /// [location] Optional.
  /// [member] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Optional.
  DeliveryPipelineIamMemberState({
    pulumi.Output<DeliveryPipelineIamMemberCondition>? condition,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? location,
    pulumi.Output<String>? member,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? role,
  }) :
      condition = pulumi.Input.asOptionalInput<DeliveryPipelineIamMemberCondition>(condition),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      member = pulumi.Input.asOptionalInput<String>(member),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineIamMemberCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'etag': ?etag,
      'location': ?location,
      'member': ?member,
      'name': ?name,
      'project': ?project,
      'role': ?role,
    };
  }

  factory DeliveryPipelineIamMemberState.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineIamMemberState(
      condition: map['condition'] == null ? null : pulumi.Output.create<DeliveryPipelineIamMemberCondition>(DeliveryPipelineIamMemberCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      member: map['member'] == null ? null : pulumi.Output.create<String>(map['member'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

