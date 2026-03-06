// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FeatureState describes the high-level state of a Feature. It may be used to describe a Feature's state at the environ-level, or per-membershop, depending on the context.
class FeatureStateResponse {
  /// The high-level, machine-readable status of this Feature.
  final pulumi.Input<String> code;
  /// A human-readable description of the current status.
  final pulumi.Input<String> description;
  /// The time this status and any related Feature-specific details were updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [FeatureStateResponse].
  /// [code] The high-level, machine-readable status of this Feature.
  /// [description] A human-readable description of the current status.
  /// [updateTime] The time this status and any related Feature-specific details were updated.
  const FeatureStateResponse({
    required this.code,
    required this.description,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': description,
      'updateTime': updateTime,
    };
  }

  factory FeatureStateResponse.fromMap(Map<String, dynamic> map) {
    return FeatureStateResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}

