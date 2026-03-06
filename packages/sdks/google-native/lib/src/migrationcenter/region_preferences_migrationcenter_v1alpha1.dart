// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The user preferences relating to target regions.
class RegionPreferencesMigrationcenterV1alpha1 {
  /// A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions.
  final pulumi.Input<List<String>>? preferredRegions;

  /// Creates a new [RegionPreferencesMigrationcenterV1alpha1].
  /// [preferredRegions] A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions.
  const RegionPreferencesMigrationcenterV1alpha1({
    this.preferredRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredRegions': ?preferredRegions,
    };
  }

  factory RegionPreferencesMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return RegionPreferencesMigrationcenterV1alpha1(
      preferredRegions: (() { final guardedValue = map['preferredRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

