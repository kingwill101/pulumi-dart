// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The low traffic region configuration.
class DefaultRolloutSpecificationLowTraffic {
  final pulumi.Input<List<String>>? regions;
  /// The wait duration.
  final pulumi.Input<String>? waitDuration;

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
      regions: map['regions'] == null ? null : ((map['regions'] as List).cast<String>()).input(),
      waitDuration: map['waitDuration'] == null ? null : (map['waitDuration'] as String).input(),
    );
  }
}

