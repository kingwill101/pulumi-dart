// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listing_commercial_info_cloud_marketplace.dart';

class ListingCommercialInfo {
  /// (Output)
  /// Details of the Marketplace Data Product associated with the Listing.
  /// Structure is documented below.
  final List<ListingCommercialInfoCloudMarketplace>? cloudMarketplaces;

  /// Creates a new [ListingCommercialInfo].
  /// [cloudMarketplaces] (Output)
  ListingCommercialInfo({
    this.cloudMarketplaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudMarketplaces': ?cloudMarketplaces == null ? null : pulumi.Input.encodeList<ListingCommercialInfoCloudMarketplace, Map<String, dynamic>>(cloudMarketplaces!, (value) => value.toMap()),
    };
  }

  factory ListingCommercialInfo.fromMap(Map<String, dynamic> map) {
    return ListingCommercialInfo(
      cloudMarketplaces: map['cloudMarketplaces'] == null ? null : pulumi.Input.decodeList<ListingCommercialInfoCloudMarketplace>(map['cloudMarketplaces'], (value) => ListingCommercialInfoCloudMarketplace.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

