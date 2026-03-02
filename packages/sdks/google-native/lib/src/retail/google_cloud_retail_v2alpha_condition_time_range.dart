// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Used for time-dependent conditions. Example: Want to have rule applied for week long sale.
class GoogleCloudRetailV2alphaConditionTimeRange {
  /// End of time range. Range is inclusive.
  final pulumi.Input<String>? endTime;
  /// Start of time range. Range is inclusive.
  final pulumi.Input<String>? startTime;

  /// Creates a new [GoogleCloudRetailV2alphaConditionTimeRange].
  /// [endTime] End of time range. Range is inclusive.
  /// [startTime] Start of time range. Range is inclusive.
  GoogleCloudRetailV2alphaConditionTimeRange({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory GoogleCloudRetailV2alphaConditionTimeRange.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaConditionTimeRange(
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

