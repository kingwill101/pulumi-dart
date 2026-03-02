// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Offer details for the marketplace that is selected by the user
class LiftrBaseOfferDetails {
  /// Offer Id for the marketplace offer
  final pulumi.Input<String> offerId;
  /// Plan Id for the marketplace offer
  final pulumi.Input<String> planId;
  /// Plan Name for the marketplace offer
  final pulumi.Input<String>? planName;
  /// Publisher Id for the marketplace offer
  final pulumi.Input<String> publisherId;
  /// Plan Display Name for the marketplace offer
  final pulumi.Input<String>? termId;
  /// Plan Display Name for the marketplace offer
  final pulumi.Input<String>? termUnit;

  /// Creates a new [LiftrBaseOfferDetails].
  /// [offerId] Offer Id for the marketplace offer
  /// [planId] Plan Id for the marketplace offer
  /// [planName] Plan Name for the marketplace offer
  /// [publisherId] Publisher Id for the marketplace offer
  /// [termId] Plan Display Name for the marketplace offer
  /// [termUnit] Plan Display Name for the marketplace offer
  LiftrBaseOfferDetails({
    required this.offerId,
    required this.planId,
    this.planName,
    required this.publisherId,
    this.termId,
    this.termUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offerId': offerId,
      'planId': planId,
      'planName': ?planName,
      'publisherId': publisherId,
      'termId': ?termId,
      'termUnit': ?termUnit,
    };
  }

  factory LiftrBaseOfferDetails.fromMap(Map<String, dynamic> map) {
    return LiftrBaseOfferDetails(
      offerId: (map['offerId'] as String).input(),
      planId: (map['planId'] as String).input(),
      planName: map['planName'] == null ? null : (map['planName']! as String).input(),
      publisherId: (map['publisherId'] as String).input(),
      termId: map['termId'] == null ? null : (map['termId']! as String).input(),
      termUnit: map['termUnit'] == null ? null : (map['termUnit']! as String).input(),
    );
  }
}

