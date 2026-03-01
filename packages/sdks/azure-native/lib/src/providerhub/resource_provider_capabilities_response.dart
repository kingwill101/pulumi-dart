// ignore_for_file: unused_element, unnecessary_cast


class ResourceProviderCapabilitiesResponse {
  /// The effect.
  final String effect;
  /// The quota id.
  final String quotaId;
  /// The required features.
  final List<String>? requiredFeatures;

  /// Creates a new [ResourceProviderCapabilitiesResponse].
  /// [effect] The effect.
  /// [quotaId] The quota id.
  /// [requiredFeatures] The required features.
  ResourceProviderCapabilitiesResponse({
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
      effect: map['effect'] as String,
      quotaId: map['quotaId'] as String,
      requiredFeatures: map['requiredFeatures'] == null ? null : (map['requiredFeatures'] as List).cast<String>(),
    );
  }
}

