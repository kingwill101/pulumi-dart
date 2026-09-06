// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The medium traffic region configuration.
class DefaultRolloutSpecificationMediumTraffic {
  final pulumi.Input<List<String>?>? regions;
  /// The wait duration.
  final pulumi.Input<String?>? waitDuration;

  /// Creates a new [DefaultRolloutSpecificationMediumTraffic].
  /// [regions] Optional.
  /// [waitDuration] The wait duration.
  const DefaultRolloutSpecificationMediumTraffic({
    this.regions,
    this.waitDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions,
      'waitDuration': ?waitDuration,
    };
  }

  factory DefaultRolloutSpecificationMediumTraffic.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationMediumTraffic(
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      waitDuration: (() { final guardedValue = map['waitDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
