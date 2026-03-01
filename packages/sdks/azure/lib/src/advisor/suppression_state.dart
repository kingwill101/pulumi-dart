// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Suppression resources.
class SuppressionState {
  /// The Name which should be used for this Advisor suppression. Changing this forces a new Advisor suppression to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Advisor recommendation to suppress. Changing this forces a new Advisor suppression to be created.
  final pulumi.Input<String>? recommendationId;
  /// The ID of the Resource to suppress the Advisor recommendation for. Changing this forces a new Advisor suppression to be created.
  final pulumi.Input<String>? resourceId;
  /// The GUID of the suppression.
  final pulumi.Input<String>? suppressionId;
  /// A optional time to live value. If omitted, the suppression will not expire. Changing this forces a new Advisor suppression to be created.
  final pulumi.Input<String>? ttl;

  /// Creates a new [SuppressionState].
  /// [name] The Name which should be used for this Advisor suppression. Changing this forces a new Advisor suppression to be created.
  /// [recommendationId] The ID of the Advisor recommendation to suppress. Changing this forces a new Advisor suppression to be created.
  /// [resourceId] The ID of the Resource to suppress the Advisor recommendation for. Changing this forces a new Advisor suppression to be created.
  /// [suppressionId] The GUID of the suppression.
  /// [ttl] A optional time to live value. If omitted, the suppression will not expire. Changing this forces a new Advisor suppression to be created.
  SuppressionState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? recommendationId,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? suppressionId,
    pulumi.Output<String>? ttl,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      recommendationId = pulumi.Input.asOptionalInput<String>(recommendationId),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      suppressionId = pulumi.Input.asOptionalInput<String>(suppressionId),
      ttl = pulumi.Input.asOptionalInput<String>(ttl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recommendationId': ?recommendationId,
      'resourceId': ?resourceId,
      'suppressionId': ?suppressionId,
      'ttl': ?ttl,
    };
  }

  factory SuppressionState.fromMap(Map<String, dynamic> map) {
    return SuppressionState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recommendationId: map['recommendationId'] == null ? null : pulumi.Output.create<String>(map['recommendationId'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      suppressionId: map['suppressionId'] == null ? null : pulumi.Output.create<String>(map['suppressionId'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<String>(map['ttl'] as String),
    );
  }
}

