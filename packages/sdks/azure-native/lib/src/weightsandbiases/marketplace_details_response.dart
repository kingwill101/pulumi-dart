// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'offer_details_response.dart';

/// Marketplace details for an organization
class MarketplaceDetailsResponse {
  /// Offer details for the marketplace that is selected by the user
  final pulumi.Input<OfferDetailsResponse> offerDetails;
  /// Azure subscription id for the the marketplace offer is purchased from
  final pulumi.Input<String>? subscriptionId;
  /// Marketplace subscription status
  final pulumi.Input<String> subscriptionStatus;

  /// Creates a new [MarketplaceDetailsResponse].
  /// [offerDetails] Offer details for the marketplace that is selected by the user
  /// [subscriptionId] Azure subscription id for the the marketplace offer is purchased from
  /// [subscriptionStatus] Marketplace subscription status
  const MarketplaceDetailsResponse({
    required this.offerDetails,
    this.subscriptionId,
    required this.subscriptionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offerDetails': pulumi.Input.mapInputValue<OfferDetailsResponse, Map<String, dynamic>>(offerDetails, (value) => value.toMap()),
      'subscriptionId': ?subscriptionId,
      'subscriptionStatus': subscriptionStatus,
    };
  }

  factory MarketplaceDetailsResponse.fromMap(Map<String, dynamic> map) {
    return MarketplaceDetailsResponse(
      offerDetails: pulumi.Input.fromValue(OfferDetailsResponse.fromMap((map['offerDetails']! as Map).cast<String, dynamic>())),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionStatus: pulumi.Input.fromValue(map['subscriptionStatus'] as String),
    );
  }
}
