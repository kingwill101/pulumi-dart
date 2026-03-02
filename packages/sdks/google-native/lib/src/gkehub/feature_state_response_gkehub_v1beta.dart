// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FeatureState describes the high-level state of a Feature. It may be used to describe a Feature's state at the environ-level, or per-membershop, depending on the context.
class FeatureStateResponseGkehubV1beta {
  /// The high-level, machine-readable status of this Feature.
  final pulumi.Input<String> code;
  /// A human-readable description of the current status.
  final pulumi.Input<String> description;
  /// The time this status and any related Feature-specific details were updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [FeatureStateResponseGkehubV1beta].
  /// [code] The high-level, machine-readable status of this Feature.
  /// [description] A human-readable description of the current status.
  /// [updateTime] The time this status and any related Feature-specific details were updated.
  FeatureStateResponseGkehubV1beta({
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

  factory FeatureStateResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return FeatureStateResponseGkehubV1beta(
      code: (map['code'] as String).input(),
      description: (map['description'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}

