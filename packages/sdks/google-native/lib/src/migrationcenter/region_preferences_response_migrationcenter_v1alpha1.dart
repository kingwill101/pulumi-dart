// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The user preferences relating to target regions.
class RegionPreferencesResponseMigrationcenterV1alpha1 {
  /// A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions.
  final pulumi.Input<List<String>> preferredRegions;

  /// Creates a new [RegionPreferencesResponseMigrationcenterV1alpha1].
  /// [preferredRegions] A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions.
  const RegionPreferencesResponseMigrationcenterV1alpha1({
    required this.preferredRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredRegions': preferredRegions,
    };
  }

  factory RegionPreferencesResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return RegionPreferencesResponseMigrationcenterV1alpha1(
      preferredRegions: pulumi.Input.fromValue((map['preferredRegions'] as List).cast<String>()),
    );
  }
}

