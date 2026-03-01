// ignore_for_file: unused_element, unnecessary_cast


/// Used for time-dependent conditions. Example: Want to have rule applied for week long sale.
class GoogleCloudRetailV2ConditionTimeRangeResponse {
  /// End of time range. Range is inclusive.
  final String endTime;
  /// Start of time range. Range is inclusive.
  final String startTime;

  /// Creates a new [GoogleCloudRetailV2ConditionTimeRangeResponse].
  /// [endTime] End of time range. Range is inclusive.
  /// [startTime] Start of time range. Range is inclusive.
  GoogleCloudRetailV2ConditionTimeRangeResponse({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory GoogleCloudRetailV2ConditionTimeRangeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2ConditionTimeRangeResponse(
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

