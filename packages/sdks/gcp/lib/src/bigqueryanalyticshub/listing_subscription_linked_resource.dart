// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingSubscriptionLinkedResource {
  /// (Output)
  /// Output only. Name of the linked dataset, e.g. projects/subscriberproject/datasets/linkedDataset
  final pulumi.Input<String?>? linkedDataset;
  /// (Output)
  /// Output only. Name of the Pub/Sub subscription, e.g. projects/subscriberproject/subscriptions/sub_id
  final pulumi.Input<String?>? linkedPubsubSubscription;
  /// (Output)
  /// Output only. Listing for which linked resource is created.
  final pulumi.Input<String?>? listing;

  /// Creates a new [ListingSubscriptionLinkedResource].
  /// [linkedDataset] (Output)
  /// [linkedPubsubSubscription] (Output)
  /// [listing] (Output)
  const ListingSubscriptionLinkedResource({
    this.linkedDataset,
    this.linkedPubsubSubscription,
    this.listing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedDataset': ?linkedDataset,
      'linkedPubsubSubscription': ?linkedPubsubSubscription,
      'listing': ?listing,
    };
  }

  factory ListingSubscriptionLinkedResource.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionLinkedResource(
      linkedDataset: (() { final guardedValue = map['linkedDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedPubsubSubscription: (() { final guardedValue = map['linkedPubsubSubscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listing: (() { final guardedValue = map['listing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
