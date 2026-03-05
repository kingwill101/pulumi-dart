// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceProviderCapabilities {
  /// The effect.
  final pulumi.Input<String> effect;
  /// The quota id.
  final pulumi.Input<String> quotaId;
  /// The required features.
  final pulumi.Input<List<String>>? requiredFeatures;

  /// Creates a new [ResourceProviderCapabilities].
  /// [effect] The effect.
  /// [quotaId] The quota id.
  /// [requiredFeatures] The required features.
  ResourceProviderCapabilities({
    required this.effect,
    required this.quotaId,
    this.requiredFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': effect,
      'quotaId': quotaId,
      'requiredFeatures': ?requiredFeatures,
    };
  }

  factory ResourceProviderCapabilities.fromMap(Map<String, dynamic> map) {
    return ResourceProviderCapabilities(
      effect: pulumi.Input.fromValue(map['effect'] as String),
      quotaId: pulumi.Input.fromValue(map['quotaId'] as String),
      requiredFeatures: (() { final guardedValue = map['requiredFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

