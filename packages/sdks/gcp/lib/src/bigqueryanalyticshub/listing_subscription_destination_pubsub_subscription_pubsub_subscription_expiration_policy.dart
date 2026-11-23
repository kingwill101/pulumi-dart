// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionExpirationPolicy {
  /// Specifies the "time-to-live" duration for an associated resource. The resource expires if it
  /// is not active for a period of `ttl`. The definition of "activity" depends on the type of the
  /// associated resource. The minimum and maximum allowed values for `ttl` depend on the type of
  /// the associated resource, as well. If `ttl` is not set, the associated resource never expires.
  final pulumi.Input<String?>? ttl;

  /// Creates a new [ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionExpirationPolicy].
  /// [ttl] Specifies the "time-to-live" duration for an associated resource. The resource expires if it
  const ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionExpirationPolicy({
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ttl': ?ttl,
    };
  }

  factory ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionExpirationPolicy.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionExpirationPolicy(
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
