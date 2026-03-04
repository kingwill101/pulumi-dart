// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'liftr_base_offer_details_response.dart';

/// Marketplace details for an organization
class LiftrBaseMarketplaceDetailsResponse {
  /// Offer details for the marketplace that is selected by the user
  final pulumi.Input<LiftrBaseOfferDetailsResponse> offerDetails;

  /// Azure subscription id for the the marketplace offer is purchased from
  final pulumi.Input<String>? subscriptionId;

  /// Marketplace subscription status
  final pulumi.Input<String> subscriptionStatus;

  /// Creates a new [LiftrBaseMarketplaceDetailsResponse].
  /// [offerDetails] Offer details for the marketplace that is selected by the user
  /// [subscriptionId] Azure subscription id for the the marketplace offer is purchased from
  /// [subscriptionStatus] Marketplace subscription status
  LiftrBaseMarketplaceDetailsResponse({
    required this.offerDetails,
    this.subscriptionId,
    required this.subscriptionStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offerDetails':
          pulumi.Input.mapInputValue<
            LiftrBaseOfferDetailsResponse,
            Map<String, dynamic>
          >(offerDetails, (value) => value.toMap()),
      'subscriptionId': ?subscriptionId,
      'subscriptionStatus': subscriptionStatus,
    };
  }

  factory LiftrBaseMarketplaceDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return LiftrBaseMarketplaceDetailsResponse(
      offerDetails: pulumi.Input.fromValue(
        LiftrBaseOfferDetailsResponse.fromMap(
          (map['offerDetails']! as Map).cast<String, dynamic>(),
        ),
      ),
      subscriptionId: (() {
        final guardedValue = map['subscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionStatus: pulumi.Input.fromValue(
        map['subscriptionStatus'] as String,
      ),
    );
  }
}
