// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceRegionPreference {
  /// (Output)
  /// A list of preferred regions,
  /// ordered by the most preferred region first.
  /// Set only valid Google Cloud region names.
  /// See https://cloud.google.com/compute/docs/regions-zones
  /// for available regions.
  final pulumi.Input<List<String>?>? preferredRegions;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceRegionPreference].
  /// [preferredRegions] (Output)
  const ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceRegionPreference({
    this.preferredRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredRegions': ?preferredRegions,
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceRegionPreference.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFindingMachinePreferenceRegionPreference(
      preferredRegions: (() { final guardedValue = map['preferredRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
