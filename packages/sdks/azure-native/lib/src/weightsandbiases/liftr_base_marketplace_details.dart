// ignore_for_file: unused_element, unnecessary_cast

import 'liftr_base_offer_details.dart';

/// Marketplace details for an organization
class LiftrBaseMarketplaceDetails {
  /// Offer details for the marketplace that is selected by the user
  final LiftrBaseOfferDetails offerDetails;
  /// Azure subscription id for the the marketplace offer is purchased from
  final String? subscriptionId;

  /// Creates a new [LiftrBaseMarketplaceDetails].
  /// [offerDetails] Offer details for the marketplace that is selected by the user
  /// [subscriptionId] Azure subscription id for the the marketplace offer is purchased from
  LiftrBaseMarketplaceDetails({
    required this.offerDetails,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offerDetails': offerDetails.toMap(),
      'subscriptionId': ?subscriptionId,
    };
  }

  factory LiftrBaseMarketplaceDetails.fromMap(Map<String, dynamic> map) {
    return LiftrBaseMarketplaceDetails(
      offerDetails: LiftrBaseOfferDetails.fromMap((map['offerDetails'] as Map).cast<String, dynamic>()),
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
    );
  }
}

