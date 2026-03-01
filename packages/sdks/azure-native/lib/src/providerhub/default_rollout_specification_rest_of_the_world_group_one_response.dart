// ignore_for_file: unused_element, unnecessary_cast


/// The rest of the world group one region configuration.
class DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse {
  final List<String>? regions;
  /// The wait duration.
  final String? waitDuration;

  /// Creates a new [DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse].
  /// [regions] Optional.
  /// [waitDuration] The wait duration.
  DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse({
    this.regions,
    this.waitDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions,
      'waitDuration': ?waitDuration,
    };
  }

  factory DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationRestOfTheWorldGroupOneResponse(
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
      waitDuration: map['waitDuration'] == null ? null : map['waitDuration'] as String,
    );
  }
}

