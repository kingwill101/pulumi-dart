// ignore_for_file: unused_element, unnecessary_cast


/// The high traffic region configuration.
class DefaultRolloutSpecificationHighTrafficResponse {
  final List<String>? regions;
  /// The wait duration.
  final String? waitDuration;

  /// Creates a new [DefaultRolloutSpecificationHighTrafficResponse].
  /// [regions] Optional.
  /// [waitDuration] The wait duration.
  DefaultRolloutSpecificationHighTrafficResponse({
    this.regions,
    this.waitDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions,
      'waitDuration': ?waitDuration,
    };
  }

  factory DefaultRolloutSpecificationHighTrafficResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationHighTrafficResponse(
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
      waitDuration: map['waitDuration'] == null ? null : map['waitDuration'] as String,
    );
  }
}

