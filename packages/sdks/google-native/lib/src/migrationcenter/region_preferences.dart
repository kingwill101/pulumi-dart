// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The user preferences relating to target regions.
class RegionPreferences {
  /// A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions.
  final pulumi.Input<List<String>>? preferredRegions;

  /// Creates a new [RegionPreferences].
  /// [preferredRegions] A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions.
  RegionPreferences({
    this.preferredRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredRegions': ?preferredRegions,
    };
  }

  factory RegionPreferences.fromMap(Map<String, dynamic> map) {
    return RegionPreferences(
      preferredRegions: map['preferredRegions'] == null ? null : ((map['preferredRegions']! as List).cast<String>()).input(),
    );
  }
}

