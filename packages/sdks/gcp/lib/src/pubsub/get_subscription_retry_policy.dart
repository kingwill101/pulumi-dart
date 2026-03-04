// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubscriptionRetryPolicy {
  /// The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String> maximumBackoff;

  /// The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String> minimumBackoff;

  /// Creates a new [GetSubscriptionRetryPolicy].
  /// [maximumBackoff] The maximum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 600 seconds.
  /// [minimumBackoff] The minimum delay between consecutive deliveries of a given message. Value should be between 0 and 600 seconds. Defaults to 10 seconds.
  GetSubscriptionRetryPolicy({
    required this.maximumBackoff,
    required this.minimumBackoff,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumBackoff': maximumBackoff,
      'minimumBackoff': minimumBackoff,
    };
  }

  factory GetSubscriptionRetryPolicy.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionRetryPolicy(
      maximumBackoff: pulumi.Input.fromValue(map['maximumBackoff'] as String),
      minimumBackoff: pulumi.Input.fromValue(map['minimumBackoff'] as String),
    );
  }
}
