// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_subscription_destination_pubsub_subscription_pubsub_subscription.dart';

class ListingSubscriptionDestinationPubsubSubscription {
  /// Destination Pub/Sub subscription resource.
  /// Structure is documented below.
  final pulumi.Input<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscription> pubsubSubscription;

  /// Creates a new [ListingSubscriptionDestinationPubsubSubscription].
  /// [pubsubSubscription] Destination Pub/Sub subscription resource.
  const ListingSubscriptionDestinationPubsubSubscription({
    required this.pubsubSubscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsubSubscription': pulumi.Input.mapInputValue<ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscription, Map<String, dynamic>>(pubsubSubscription, (value) => value.toMap()),
    };
  }

  factory ListingSubscriptionDestinationPubsubSubscription.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionDestinationPubsubSubscription(
      pubsubSubscription: pulumi.Input.fromValue(ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscription.fromMap((map['pubsubSubscription']! as Map).cast<String, dynamic>())),
    );
  }
}
