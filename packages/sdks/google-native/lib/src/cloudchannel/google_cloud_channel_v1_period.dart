// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_period_period_type.dart';

/// Represents period in days/months/years.
class GoogleCloudChannelV1Period {
  /// Total duration of Period Type defined.
  final int? duration;
  /// Period Type.
  final GoogleCloudChannelV1PeriodPeriodType? periodType;

  /// Creates a new [GoogleCloudChannelV1Period].
  /// [duration] Total duration of Period Type defined.
  /// [periodType] Period Type.
  GoogleCloudChannelV1Period({
    this.duration,
    this.periodType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'periodType': ?periodType == null ? null : periodType!.value,
    };
  }

  factory GoogleCloudChannelV1Period.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1Period(
      duration: map['duration'] == null ? null : map['duration'] as int,
      periodType: map['periodType'] == null ? null : GoogleCloudChannelV1PeriodPeriodType.fromValue(map['periodType'] as String),
    );
  }
}

