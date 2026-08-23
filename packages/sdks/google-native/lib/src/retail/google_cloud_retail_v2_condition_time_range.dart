// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Used for time-dependent conditions. Example: Want to have rule applied for week long sale.
class GoogleCloudRetailV2ConditionTimeRange {
  /// End of time range. Range is inclusive.
  final pulumi.Input<String>? endTime;
  /// Start of time range. Range is inclusive.
  final pulumi.Input<String>? startTime;

  /// Creates a new [GoogleCloudRetailV2ConditionTimeRange].
  /// [endTime] End of time range. Range is inclusive.
  /// [startTime] Start of time range. Range is inclusive.
  const GoogleCloudRetailV2ConditionTimeRange({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory GoogleCloudRetailV2ConditionTimeRange.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2ConditionTimeRange(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
