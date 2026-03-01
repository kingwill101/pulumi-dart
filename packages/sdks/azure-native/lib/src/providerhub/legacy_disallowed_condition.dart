// ignore_for_file: unused_element, unnecessary_cast


class LegacyDisallowedCondition {
  /// The disallowed legacy operations.
  final List<String>? disallowedLegacyOperations;
  /// Feature string.
  final String? feature;

  /// Creates a new [LegacyDisallowedCondition].
  /// [disallowedLegacyOperations] The disallowed legacy operations.
  /// [feature] Feature string.
  LegacyDisallowedCondition({
    this.disallowedLegacyOperations,
    this.feature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disallowedLegacyOperations': ?disallowedLegacyOperations,
      'feature': ?feature,
    };
  }

  factory LegacyDisallowedCondition.fromMap(Map<String, dynamic> map) {
    return LegacyDisallowedCondition(
      disallowedLegacyOperations: map['disallowedLegacyOperations'] == null ? null : (map['disallowedLegacyOperations'] as List).cast<String>(),
      feature: map['feature'] == null ? null : map['feature'] as String,
    );
  }
}

