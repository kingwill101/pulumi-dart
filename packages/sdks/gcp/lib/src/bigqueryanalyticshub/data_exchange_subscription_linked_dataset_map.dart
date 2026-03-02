// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataExchangeSubscriptionLinkedDatasetMap {
  /// (Output)
  /// Output only. Name of the linked dataset, e.g. projects/subscriberproject/datasets/linkedDataset
  final pulumi.Input<String>? linkedDataset;
  /// (Output)
  /// Output only. Name of the Pub/Sub subscription, e.g. projects/subscriberproject/subscriptions/subscriptions/sub_id
  final pulumi.Input<String>? linkedPubsubSubscription;
  /// (Output)
  /// Output only. Listing for which linked resource is created.
  final pulumi.Input<String>? listing;
  /// (Required) The identifier for this object. Format specified above.
  final pulumi.Input<String> resourceName;

  /// Creates a new [DataExchangeSubscriptionLinkedDatasetMap].
  /// [linkedDataset] (Output)
  /// [linkedPubsubSubscription] (Output)
  /// [listing] (Output)
  /// [resourceName] (Required) The identifier for this object. Format specified above.
  DataExchangeSubscriptionLinkedDatasetMap({
    this.linkedDataset,
    this.linkedPubsubSubscription,
    this.listing,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedDataset': ?linkedDataset,
      'linkedPubsubSubscription': ?linkedPubsubSubscription,
      'listing': ?listing,
      'resourceName': resourceName,
    };
  }

  factory DataExchangeSubscriptionLinkedDatasetMap.fromMap(Map<String, dynamic> map) {
    return DataExchangeSubscriptionLinkedDatasetMap(
      linkedDataset: map['linkedDataset'] == null ? null : (map['linkedDataset'] as String).input(),
      linkedPubsubSubscription: map['linkedPubsubSubscription'] == null ? null : (map['linkedPubsubSubscription'] as String).input(),
      listing: map['listing'] == null ? null : (map['listing'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

