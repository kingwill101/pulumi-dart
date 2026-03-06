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
  const LiftrBaseOfferDetails({
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
      offerId: pulumi.Input.fromValue(map['offerId'] as String),
      planId: pulumi.Input.fromValue(map['planId'] as String),
      planName: (() { final guardedValue = map['planName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherId: pulumi.Input.fromValue(map['publisherId'] as String),
      termId: (() { final guardedValue = map['termId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      termUnit: (() { final guardedValue = map['termUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

