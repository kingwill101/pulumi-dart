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
      name: map['name'] == null ? null : (map['name'] as String).input(),
      recommendationId: map['recommendationId'] == null ? null : (map['recommendationId'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      suppressionId: map['suppressionId'] == null ? null : (map['suppressionId'] as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as String).input(),
    );
  }
}

