// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The user preferences relating to target regions.
class RegionPreferencesMigrationcenterV1alpha1 {
  /// A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions.
  final pulumi.Input<List<String>>? preferredRegions;

  /// Creates a new [RegionPreferencesMigrationcenterV1alpha1].
  /// [preferredRegions] A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions.
  RegionPreferencesMigrationcenterV1alpha1({
    this.preferredRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredRegions': ?preferredRegions,
    };
  }

  factory RegionPreferencesMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return RegionPreferencesMigrationcenterV1alpha1(
      preferredRegions: map['preferredRegions'] == null ? null : ((map['preferredRegions'] as List).cast<String>()).input(),
    );
  }
}

