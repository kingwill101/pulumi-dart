// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_advisor_suppression_suppression_args_doc}
/// The set of arguments for Suppression.
/// {@endtemplate}
/// {@macro pulumi_advisor_suppression_suppression_args_doc}
class SuppressionArgs {
  /// The Name which should be used for this Advisor suppression. Changing this forces a new Advisor suppression to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Advisor recommendation to suppress. Changing this forces a new Advisor suppression to be created.
  final pulumi.Input<String> recommendationId;
  /// The ID of the Resource to suppress the Advisor recommendation for. Changing this forces a new Advisor suppression to be created.
  final pulumi.Input<String> resourceId;
  /// A optional time to live value. If omitted, the suppression will not expire. Changing this forces a new Advisor suppression to be created.
  final pulumi.Input<String>? ttl;

  /// Creates a new [SuppressionArgs].
  /// [name] The Name which should be used for this Advisor suppression. Changing this forces a new Advisor suppression to be created.
  /// [recommendationId] The ID of the Advisor recommendation to suppress. Changing this forces a new Advisor suppression to be created.
  /// [resourceId] The ID of the Resource to suppress the Advisor recommendation for. Changing this forces a new Advisor suppression to be created.
  /// [ttl] A optional time to live value. If omitted, the suppression will not expire. Changing this forces a new Advisor suppression to be created.
  SuppressionArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> recommendationId,
    required pulumi.Output<String> resourceId,
    pulumi.Output<String>? ttl,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      recommendationId = pulumi.Input.asInput<String>(recommendationId),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      ttl = pulumi.Input.asOptionalInput<String>(ttl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recommendationId': recommendationId,
      'resourceId': resourceId,
      'ttl': ?ttl,
    };
  }

  factory SuppressionArgs.fromMap(Map<String, dynamic> map) {
    return SuppressionArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recommendationId: pulumi.Output.create<String>(map['recommendationId'] as String),
      resourceId: pulumi.Output.create<String>(map['resourceId'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<String>(map['ttl'] as String),
    );
  }
}

