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
  const SuppressionState({
    this.name,
    this.recommendationId,
    this.resourceId,
    this.suppressionId,
    this.ttl,
  });

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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recommendationId: (() { final guardedValue = map['recommendationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suppressionId: (() { final guardedValue = map['suppressionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
