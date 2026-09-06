// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'liftr_base_offer_details.dart';

/// Marketplace details for an organization
class LiftrBaseMarketplaceDetails {
  /// Offer details for the marketplace that is selected by the user
  final pulumi.Input<LiftrBaseOfferDetails> offerDetails;
  /// Azure subscription id for the the marketplace offer is purchased from
  final pulumi.Input<String?>? subscriptionId;

  /// Creates a new [LiftrBaseMarketplaceDetails].
  /// [offerDetails] Offer details for the marketplace that is selected by the user
  /// [subscriptionId] Azure subscription id for the the marketplace offer is purchased from
  const LiftrBaseMarketplaceDetails({
    required this.offerDetails,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offerDetails': pulumi.Input.mapInputValue<LiftrBaseOfferDetails, Map<String, dynamic>>(offerDetails, (value) => value.toMap()),
      'subscriptionId': ?subscriptionId,
    };
  }

  factory LiftrBaseMarketplaceDetails.fromMap(Map<String, dynamic> map) {
    return LiftrBaseMarketplaceDetails(
      offerDetails: pulumi.Input.fromValue(LiftrBaseOfferDetails.fromMap((map['offerDetails']! as Map).cast<String, dynamic>())),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
