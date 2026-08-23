// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataExchangeSubscriptionLinkedResource {
  /// (Output)
  /// Output only. Name of the linked dataset, e.g. projects/subscriberproject/datasets/linkedDataset
  final pulumi.Input<String>? linkedDataset;
  /// (Output)
  /// Output only. Listing for which linked resource is created.
  final pulumi.Input<String>? listing;

  /// Creates a new [DataExchangeSubscriptionLinkedResource].
  /// [linkedDataset] (Output)
  /// [listing] (Output)
  const DataExchangeSubscriptionLinkedResource({
    this.linkedDataset,
    this.listing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedDataset': ?linkedDataset,
      'listing': ?listing,
    };
  }

  factory DataExchangeSubscriptionLinkedResource.fromMap(Map<String, dynamic> map) {
    return DataExchangeSubscriptionLinkedResource(
      linkedDataset: (() { final guardedValue = map['linkedDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listing: (() { final guardedValue = map['listing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
