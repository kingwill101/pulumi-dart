// ignore_for_file: unused_element, unnecessary_cast


class LegacyDisallowedConditionResponse {
  /// The disallowed legacy operations.
  final List<String>? disallowedLegacyOperations;
  /// Feature string.
  final String? feature;

  /// Creates a new [LegacyDisallowedConditionResponse].
  /// [disallowedLegacyOperations] The disallowed legacy operations.
  /// [feature] Feature string.
  LegacyDisallowedConditionResponse({
    this.disallowedLegacyOperations,
    this.feature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disallowedLegacyOperations': ?disallowedLegacyOperations,
      'feature': ?feature,
    };
  }

  factory LegacyDisallowedConditionResponse.fromMap(Map<String, dynamic> map) {
    return LegacyDisallowedConditionResponse(
      disallowedLegacyOperations: map['disallowedLegacyOperations'] == null ? null : (map['disallowedLegacyOperations'] as List).cast<String>(),
      feature: map['feature'] == null ? null : map['feature'] as String,
    );
  }
}

