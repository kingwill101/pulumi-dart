// ignore_for_file: unused_element, unnecessary_cast


class IoTHubCloudToDeviceFeedback {
  /// The lock duration for the feedback queue, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 5 and 300 seconds. Defaults to `PT60S`.
  final String? lockDuration;
  /// The maximum delivery count for the feedback queue. This value must be between `1` and `100`. Defaults to `10`.
  final int? maxDeliveryCount;
  /// The retention time for service-bound feedback messages, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 48 hours. Defaults to `PT1H`.
  final String? timeToLive;

  /// Creates a new [IoTHubCloudToDeviceFeedback].
  /// [lockDuration] The lock duration for the feedback queue, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 5 and 300 seconds. Defaults to `PT60S`.
  /// [maxDeliveryCount] The maximum delivery count for the feedback queue. This value must be between `1` and `100`. Defaults to `10`.
  /// [timeToLive] The retention time for service-bound feedback messages, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 48 hours. Defaults to `PT1H`.
  IoTHubCloudToDeviceFeedback({
    this.lockDuration,
    this.maxDeliveryCount,
    this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockDuration': ?lockDuration,
      'maxDeliveryCount': ?maxDeliveryCount,
      'timeToLive': ?timeToLive,
    };
  }

  factory IoTHubCloudToDeviceFeedback.fromMap(Map<String, dynamic> map) {
    return IoTHubCloudToDeviceFeedback(
      lockDuration: map['lockDuration'] == null ? null : map['lockDuration'] as String,
      maxDeliveryCount: map['maxDeliveryCount'] == null ? null : map['maxDeliveryCount'] as int,
      timeToLive: map['timeToLive'] == null ? null : map['timeToLive'] as String,
    );
  }
}

