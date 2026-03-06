// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_subscription_commercial_info_cloud_marketplace.dart';

class ListingSubscriptionCommercialInfo {
  /// (Output)
  /// Cloud Marketplace commercial metadata for this subscription.
  /// Structure is documented below.
  final pulumi.Input<List<ListingSubscriptionCommercialInfoCloudMarketplace>>? cloudMarketplaces;

  /// Creates a new [ListingSubscriptionCommercialInfo].
  /// [cloudMarketplaces] (Output)
  const ListingSubscriptionCommercialInfo({
    this.cloudMarketplaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudMarketplaces': ?pulumi.Input.mapOptionalInputValue<List<ListingSubscriptionCommercialInfoCloudMarketplace>, List<Map<String, dynamic>>>(cloudMarketplaces, (value) => pulumi.Input.encodeList<ListingSubscriptionCommercialInfoCloudMarketplace, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ListingSubscriptionCommercialInfo.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionCommercialInfo(
      cloudMarketplaces: (() { final guardedValue = map['cloudMarketplaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ListingSubscriptionCommercialInfoCloudMarketplace>(guardedValue, (value) => ListingSubscriptionCommercialInfoCloudMarketplace.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

