// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionRetryPolicy {
  /// The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? maximumBackoff;
  /// The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? minimumBackoff;

  /// Creates a new [SubscriptionRetryPolicy].
  /// [maximumBackoff] The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.
  /// [minimumBackoff] The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.
  const SubscriptionRetryPolicy({
    this.maximumBackoff,
    this.minimumBackoff,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumBackoff': ?maximumBackoff,
      'minimumBackoff': ?minimumBackoff,
    };
  }

  factory SubscriptionRetryPolicy.fromMap(Map<String, dynamic> map) {
    return SubscriptionRetryPolicy(
      maximumBackoff: (() { final guardedValue = map['maximumBackoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumBackoff: (() { final guardedValue = map['minimumBackoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
