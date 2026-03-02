// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The rest of the world group one region configuration.
class DefaultRolloutSpecificationRestOfTheWorldGroupOne {
  final pulumi.Input<List<String>>? regions;
  /// The wait duration.
  final pulumi.Input<String>? waitDuration;

  /// Creates a new [DefaultRolloutSpecificationRestOfTheWorldGroupOne].
  /// [regions] Optional.
  /// [waitDuration] The wait duration.
  DefaultRolloutSpecificationRestOfTheWorldGroupOne({
    this.regions,
    this.waitDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions,
      'waitDuration': ?waitDuration,
    };
  }

  factory DefaultRolloutSpecificationRestOfTheWorldGroupOne.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutSpecificationRestOfTheWorldGroupOne(
      regions: map['regions'] == null ? null : ((map['regions'] as List).cast<String>()).input(),
      waitDuration: map['waitDuration'] == null ? null : (map['waitDuration'] as String).input(),
    );
  }
}

