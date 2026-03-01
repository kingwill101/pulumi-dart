// ignore_for_file: unused_element, unnecessary_cast


/// The low traffic region configuration.
class DefaultRolloutSpecificationLowTrafficResponse {
  final List<String>? regions;
  /// The wait duration.
  final String? waitDuration;

  /// Creates a new [DefaultRolloutSpecificationLowTrafficResponse].
  /// [regions] Optional.
  /// [waitDuration] The wait duration.
  DefaultRolloutSpecificationLowTrafficResponse({
    this.regions,
    this.waitDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions,
      'waitDuration': ?waitDuration,
    };
  }

  factory DefaultRolloutSpecificationLowTrafficResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationLowTrafficResponse(
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
      waitDuration: map['waitDuration'] == null ? null : map['waitDuration'] as String,
    );
  }
}

