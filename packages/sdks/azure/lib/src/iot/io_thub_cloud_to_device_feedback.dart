// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IoTHubCloudToDeviceFeedback {
  /// The lock duration for the feedback queue, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 5 and 300 seconds. Defaults to `PT60S`.
  final pulumi.Input<String>? lockDuration;
  /// The maximum delivery count for the feedback queue. This value must be between `1` and `100`. Defaults to `10`.
  final pulumi.Input<int>? maxDeliveryCount;
  /// The retention time for service-bound feedback messages, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 48 hours. Defaults to `PT1H`.
  final pulumi.Input<String>? timeToLive;

  /// Creates a new [IoTHubCloudToDeviceFeedback].
  /// [lockDuration] The lock duration for the feedback queue, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 5 and 300 seconds. Defaults to `PT60S`.
  /// [maxDeliveryCount] The maximum delivery count for the feedback queue. This value must be between `1` and `100`. Defaults to `10`.
  /// [timeToLive] The retention time for service-bound feedback messages, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 48 hours. Defaults to `PT1H`.
  const IoTHubCloudToDeviceFeedback({
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
      lockDuration: (() { final guardedValue = map['lockDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxDeliveryCount: (() { final guardedValue = map['maxDeliveryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeToLive: (() { final guardedValue = map['timeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

