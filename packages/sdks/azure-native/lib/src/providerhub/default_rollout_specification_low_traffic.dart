// ignore_for_file: unused_element, unnecessary_cast


/// The low traffic region configuration.
class DefaultRolloutSpecificationLowTraffic {
  final List<String>? regions;
  /// The wait duration.
  final String? waitDuration;

  /// Creates a new [DefaultRolloutSpecificationLowTraffic].
  /// [regions] Optional.
  /// [waitDuration] The wait duration.
  DefaultRolloutSpecificationLowTraffic({
    this.regions,
    this.waitDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions,
      'waitDuration': ?waitDuration,
    };
  }

  factory DefaultRolloutSpecificationLowTraffic.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationLowTraffic(
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
      waitDuration: map['waitDuration'] == null ? null : map['waitDuration'] as String,
    );
  }
}

