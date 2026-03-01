// ignore_for_file: unused_element, unnecessary_cast


/// Offer details for the marketplace that is selected by the user
class LiftrBaseOfferDetailsResponse {
  /// Offer Id for the marketplace offer
  final String offerId;
  /// Plan Id for the marketplace offer
  final String planId;
  /// Plan Name for the marketplace offer
  final String? planName;
  /// Publisher Id for the marketplace offer
  final String publisherId;
  /// Plan Display Name for the marketplace offer
  final String? termId;
  /// Plan Display Name for the marketplace offer
  final String? termUnit;

  /// Creates a new [LiftrBaseOfferDetailsResponse].
  /// [offerId] Offer Id for the marketplace offer
  /// [planId] Plan Id for the marketplace offer
  /// [planName] Plan Name for the marketplace offer
  /// [publisherId] Publisher Id for the marketplace offer
  /// [termId] Plan Display Name for the marketplace offer
  /// [termUnit] Plan Display Name for the marketplace offer
  LiftrBaseOfferDetailsResponse({
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

  factory LiftrBaseOfferDetailsResponse.fromMap(Map<String, dynamic> map) {
    return LiftrBaseOfferDetailsResponse(
      offerId: map['offerId'] as String,
      planId: map['planId'] as String,
      planName: map['planName'] == null ? null : map['planName'] as String,
      publisherId: map['publisherId'] as String,
      termId: map['termId'] == null ? null : map['termId'] as String,
      termUnit: map['termUnit'] == null ? null : map['termUnit'] as String,
    );
  }
}

