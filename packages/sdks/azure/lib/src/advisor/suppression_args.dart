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
  const SuppressionArgs({
    this.name,
    required this.recommendationId,
    required this.resourceId,
    this.ttl,
  });

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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recommendationId: pulumi.Input.fromValue(map['recommendationId'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
