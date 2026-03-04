// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// properties for creation professionalService
class ProfessionalServiceCreationProperties {
  /// Whether the ProfessionalService subscription will auto renew upon term end.
  final pulumi.Input<bool>? autoRenew;

  /// The billing period eg P1M,P1Y for monthly,yearly respectively
  final pulumi.Input<String>? billingPeriod;

  /// The offer id.
  final pulumi.Input<String>? offerId;

  /// The publisher id.
  final pulumi.Input<String>? publisherId;

  /// The quote id which the ProfessionalService will be purchase with.
  final pulumi.Input<String>? quoteId;

  /// The plan id.
  final pulumi.Input<String>? skuId;

  /// The store front which initiates the purchase.
  final pulumi.Input<String>? storeFront;

  /// The unit term eg P1M,P1Y,P2Y,P3Y meaning month,1year,2year,3year respectively
  final pulumi.Input<String>? termUnit;

  /// Creates a new [ProfessionalServiceCreationProperties].
  /// [autoRenew] Whether the ProfessionalService subscription will auto renew upon term end.
  /// [billingPeriod] The billing period eg P1M,P1Y for monthly,yearly respectively
  /// [offerId] The offer id.
  /// [publisherId] The publisher id.
  /// [quoteId] The quote id which the ProfessionalService will be purchase with.
  /// [skuId] The plan id.
  /// [storeFront] The store front which initiates the purchase.
  /// [termUnit] The unit term eg P1M,P1Y,P2Y,P3Y meaning month,1year,2year,3year respectively
  ProfessionalServiceCreationProperties({
    this.autoRenew,
    this.billingPeriod,
    this.offerId,
    this.publisherId,
    this.quoteId,
    this.skuId,
    this.storeFront,
    this.termUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'billingPeriod': ?billingPeriod,
      'offerId': ?offerId,
      'publisherId': ?publisherId,
      'quoteId': ?quoteId,
      'skuId': ?skuId,
      'storeFront': ?storeFront,
      'termUnit': ?termUnit,
    };
  }

  factory ProfessionalServiceCreationProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProfessionalServiceCreationProperties(
      autoRenew: (() {
        final guardedValue = map['autoRenew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      billingPeriod: (() {
        final guardedValue = map['billingPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      offerId: (() {
        final guardedValue = map['offerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publisherId: (() {
        final guardedValue = map['publisherId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quoteId: (() {
        final guardedValue = map['quoteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skuId: (() {
        final guardedValue = map['skuId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storeFront: (() {
        final guardedValue = map['storeFront'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      termUnit: (() {
        final guardedValue = map['termUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
