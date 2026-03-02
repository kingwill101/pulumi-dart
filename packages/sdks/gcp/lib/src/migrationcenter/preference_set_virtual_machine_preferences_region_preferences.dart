// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreferenceSetVirtualMachinePreferencesRegionPreferences {
  /// A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions.
  final pulumi.Input<List<String>>? preferredRegions;

  /// Creates a new [PreferenceSetVirtualMachinePreferencesRegionPreferences].
  /// [preferredRegions] A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cloud region names. See https://cloud.google.com/compute/docs/regions-zones for available regions.
  PreferenceSetVirtualMachinePreferencesRegionPreferences({
    this.preferredRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredRegions': ?preferredRegions,
    };
  }

  factory PreferenceSetVirtualMachinePreferencesRegionPreferences.fromMap(Map<String, dynamic> map) {
    return PreferenceSetVirtualMachinePreferencesRegionPreferences(
      preferredRegions: map['preferredRegions'] == null ? null : ((map['preferredRegions']! as List).cast<String>()).input(),
    );
  }
}

