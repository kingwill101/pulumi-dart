// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingSubscriptionCommercialInfoCloudMarketplace {
  /// (Output)
  /// Resource name of the Marketplace Order.
  final pulumi.Input<String?>? order;

  /// Creates a new [ListingSubscriptionCommercialInfoCloudMarketplace].
  /// [order] (Output)
  const ListingSubscriptionCommercialInfoCloudMarketplace({
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'order': ?order,
    };
  }

  factory ListingSubscriptionCommercialInfoCloudMarketplace.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionCommercialInfoCloudMarketplace(
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
