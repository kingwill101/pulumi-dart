// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Used for time-dependent conditions. Example: Want to have rule applied for week long sale.
class GoogleCloudRetailV2betaConditionTimeRangeResponse {
  /// End of time range. Range is inclusive.
  final pulumi.Input<String> endTime;
  /// Start of time range. Range is inclusive.
  final pulumi.Input<String> startTime;

  /// Creates a new [GoogleCloudRetailV2betaConditionTimeRangeResponse].
  /// [endTime] End of time range. Range is inclusive.
  /// [startTime] Start of time range. Range is inclusive.
  GoogleCloudRetailV2betaConditionTimeRangeResponse({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory GoogleCloudRetailV2betaConditionTimeRangeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaConditionTimeRangeResponse(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

