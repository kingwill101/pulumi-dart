// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'io_thub_cloud_to_device_feedback.dart';

class IoTHubCloudToDevice {
  /// The default time to live for cloud-to-device messages, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 48 hours. Defaults to `PT1H`.
  final pulumi.Input<String>? defaultTtl;
  /// A `feedback` block as defined below.
  final pulumi.Input<List<IoTHubCloudToDeviceFeedback>>? feedbacks;
  /// The maximum delivery count for cloud-to-device per-device queues. This value must be between `1` and `100`. Defaults to `10`.
  final pulumi.Input<int>? maxDeliveryCount;

  /// Creates a new [IoTHubCloudToDevice].
  /// [defaultTtl] The default time to live for cloud-to-device messages, specified as an [ISO 8601 timespan duration](https://en.wikipedia.org/wiki/ISO_8601#Durations). This value must be between 1 minute and 48 hours. Defaults to `PT1H`.
  /// [feedbacks] A `feedback` block as defined below.
  /// [maxDeliveryCount] The maximum delivery count for cloud-to-device per-device queues. This value must be between `1` and `100`. Defaults to `10`.
  IoTHubCloudToDevice({
    this.defaultTtl,
    this.feedbacks,
    this.maxDeliveryCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultTtl': ?defaultTtl,
      'feedbacks': ?pulumi.Input.mapOptionalInputValue<List<IoTHubCloudToDeviceFeedback>, List<Map<String, dynamic>>>(feedbacks, (value) => pulumi.Input.encodeList<IoTHubCloudToDeviceFeedback, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxDeliveryCount': ?maxDeliveryCount,
    };
  }

  factory IoTHubCloudToDevice.fromMap(Map<String, dynamic> map) {
    return IoTHubCloudToDevice(
      defaultTtl: map['defaultTtl'] == null ? null : (map['defaultTtl']! as String).input(),
      feedbacks: map['feedbacks'] == null ? null : (pulumi.Input.decodeList<IoTHubCloudToDeviceFeedback>(map['feedbacks']!, (value) => IoTHubCloudToDeviceFeedback.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxDeliveryCount: map['maxDeliveryCount'] == null ? null : (map['maxDeliveryCount']! as int).input(),
    );
  }
}

