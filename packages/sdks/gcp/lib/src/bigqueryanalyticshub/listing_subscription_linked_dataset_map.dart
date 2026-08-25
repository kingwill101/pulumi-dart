// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingSubscriptionLinkedDatasetMap {
  /// (Output)
  /// Output only. Name of the linked dataset, e.g. projects/subscriberproject/datasets/linkedDataset
  final pulumi.Input<String?>? linkedDataset;
  /// (Output)
  /// Output only. Listing for which linked resource is created.
  final pulumi.Input<String?>? listing;
  /// (Required) The identifier for this object. Format specified above.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ListingSubscriptionLinkedDatasetMap].
  /// [linkedDataset] (Output)
  /// [listing] (Output)
  /// [resourceName] (Required) The identifier for this object. Format specified above.
  const ListingSubscriptionLinkedDatasetMap({
    this.linkedDataset,
    this.listing,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedDataset': ?linkedDataset,
      'listing': ?listing,
      'resourceName': resourceName,
    };
  }

  factory ListingSubscriptionLinkedDatasetMap.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionLinkedDatasetMap(
      linkedDataset: (() { final guardedValue = map['linkedDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listing: (() { final guardedValue = map['listing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
