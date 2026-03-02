// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WebhookThrottleConfig holds the configuration for throttling events
class WebhookThrottleConfig {
  /// ThrottleBurst is the maximum number of events sent at the same moment default 15 QPS
  final pulumi.Input<int>? burst;
  /// ThrottleQPS maximum number of batches per second default 10 QPS
  final pulumi.Input<int>? qps;

  /// Creates a new [WebhookThrottleConfig].
  /// [burst] ThrottleBurst is the maximum number of events sent at the same moment default 15 QPS
  /// [qps] ThrottleQPS maximum number of batches per second default 10 QPS
  WebhookThrottleConfig({
    this.burst,
    this.qps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'burst': ?burst,
      'qps': ?qps,
    };
  }

  factory WebhookThrottleConfig.fromMap(Map<String, dynamic> map) {
    return WebhookThrottleConfig(
      burst: map['burst'] == null ? null : (map['burst'] as int).input(),
      qps: map['qps'] == null ? null : (map['qps'] as int).input(),
    );
  }
}

