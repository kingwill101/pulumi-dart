// ignore_for_file: unused_element, unnecessary_cast


/// The canary traffic region configuration.
class DefaultRolloutSpecificationCanaryResponse {
  /// The regions.
  final List<String>? regions;
  /// The skip regions.
  final List<String>? skipRegions;

  /// Creates a new [DefaultRolloutSpecificationCanaryResponse].
  /// [regions] The regions.
  /// [skipRegions] The skip regions.
  DefaultRolloutSpecificationCanaryResponse({
    this.regions,
    this.skipRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions,
      'skipRegions': ?skipRegions,
    };
  }

  factory DefaultRolloutSpecificationCanaryResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationCanaryResponse(
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
      skipRegions: map['skipRegions'] == null ? null : (map['skipRegions'] as List).cast<String>(),
    );
  }
}

