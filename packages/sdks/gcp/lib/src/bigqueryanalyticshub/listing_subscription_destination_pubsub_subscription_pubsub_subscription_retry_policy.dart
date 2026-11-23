// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionRetryPolicy {
  /// The maximum delay between consecutive deliveries of a given message.
  /// Value should be between 0 and 600 seconds. Defaults to 600 seconds.
  final pulumi.Input<String?>? maximumBackoff;
  /// The minimum delay between consecutive deliveries of a given message.
  /// Value should be between 0 and 600 seconds. Defaults to 10 seconds.
  final pulumi.Input<String?>? minimumBackoff;

  /// Creates a new [ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionRetryPolicy].
  /// [maximumBackoff] The maximum delay between consecutive deliveries of a given message.
  /// [minimumBackoff] The minimum delay between consecutive deliveries of a given message.
  const ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionRetryPolicy({
    this.maximumBackoff,
    this.minimumBackoff,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumBackoff': ?maximumBackoff,
      'minimumBackoff': ?minimumBackoff,
    };
  }

  factory ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionRetryPolicy.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionRetryPolicy(
      maximumBackoff: (() { final guardedValue = map['maximumBackoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumBackoff: (() { final guardedValue = map['minimumBackoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
