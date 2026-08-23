// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceProviderCapabilitiesResponse {
  /// The effect.
  final pulumi.Input<String> effect;
  /// The quota id.
  final pulumi.Input<String> quotaId;
  /// The required features.
  final pulumi.Input<List<String>>? requiredFeatures;

  /// Creates a new [ResourceProviderCapabilitiesResponse].
  /// [effect] The effect.
  /// [quotaId] The quota id.
  /// [requiredFeatures] The required features.
  const ResourceProviderCapabilitiesResponse({
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

  factory ResourceProviderCapabilitiesResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderCapabilitiesResponse(
      effect: pulumi.Input.fromValue(map['effect'] as String),
      quotaId: pulumi.Input.fromValue(map['quotaId'] as String),
      requiredFeatures: (() { final guardedValue = map['requiredFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
