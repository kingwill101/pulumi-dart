// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'professional_service_properties_response_term.dart';

/// professionalService properties
class ProfessionalServiceResourceResponseProperties {
  /// Whether the ProfessionalService subscription will auto renew upon term end.
  final pulumi.Input<bool>? autoRenew;
  /// The billing period eg P1M,P1Y for monthly,yearly respectively
  final pulumi.Input<String>? billingPeriod;
  /// The created date of this resource.
  final pulumi.Input<String> created;
  /// Whether the current term is a Free Trial term
  final pulumi.Input<bool>? isFreeTrial;
  /// The last modifier date if this resource.
  final pulumi.Input<String>? lastModified;
  /// The offer id.
  final pulumi.Input<String>? offerId;
  /// The metadata about the ProfessionalService subscription such as the AzureSubscriptionId and ResourceUri.
  final pulumi.Input<Map<String, String>>? paymentChannelMetadata;
  /// The Payment channel for the ProfessionalServiceSubscription.
  final pulumi.Input<String>? paymentChannelType;
  /// The publisher id.
  final pulumi.Input<String>? publisherId;
  /// The quote id which the ProfessionalService will be purchase with.
  final pulumi.Input<String>? quoteId;
  /// The plan id.
  final pulumi.Input<String>? skuId;
  /// The ProfessionalService Subscription Status.
  final pulumi.Input<String>? status;
  /// The store front which initiates the purchase.
  final pulumi.Input<String>? storeFront;
  /// The current Term object.
  final pulumi.Input<ProfessionalServicePropertiesResponseTerm>? term;
  /// The unit term eg P1M,P1Y,P2Y,P3Y meaning month,1year,2year,3year respectively
  final pulumi.Input<String>? termUnit;

  /// Creates a new [ProfessionalServiceResourceResponseProperties].
  /// [autoRenew] Whether the ProfessionalService subscription will auto renew upon term end.
  /// [billingPeriod] The billing period eg P1M,P1Y for monthly,yearly respectively
  /// [created] The created date of this resource.
  /// [isFreeTrial] Whether the current term is a Free Trial term
  /// [lastModified] The last modifier date if this resource.
  /// [offerId] The offer id.
  /// [paymentChannelMetadata] The metadata about the ProfessionalService subscription such as the AzureSubscriptionId and ResourceUri.
  /// [paymentChannelType] The Payment channel for the ProfessionalServiceSubscription.
  /// [publisherId] The publisher id.
  /// [quoteId] The quote id which the ProfessionalService will be purchase with.
  /// [skuId] The plan id.
  /// [status] The ProfessionalService Subscription Status.
  /// [storeFront] The store front which initiates the purchase.
  /// [term] The current Term object.
  /// [termUnit] The unit term eg P1M,P1Y,P2Y,P3Y meaning month,1year,2year,3year respectively
  const ProfessionalServiceResourceResponseProperties({
    this.autoRenew,
    this.billingPeriod,
    required this.created,
    this.isFreeTrial,
    this.lastModified,
    this.offerId,
    this.paymentChannelMetadata,
    this.paymentChannelType,
    this.publisherId,
    this.quoteId,
    this.skuId,
    this.status,
    this.storeFront,
    this.term,
    this.termUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'billingPeriod': ?billingPeriod,
      'created': created,
      'isFreeTrial': ?isFreeTrial,
      'lastModified': ?lastModified,
      'offerId': ?offerId,
      'paymentChannelMetadata': ?paymentChannelMetadata,
      'paymentChannelType': ?paymentChannelType,
      'publisherId': ?publisherId,
      'quoteId': ?quoteId,
      'skuId': ?skuId,
      'status': ?status,
      'storeFront': ?storeFront,
      'term': ?pulumi.Input.mapOptionalInputValue<ProfessionalServicePropertiesResponseTerm, Map<String, dynamic>>(term, (value) => value.toMap()),
      'termUnit': ?termUnit,
    };
  }

  factory ProfessionalServiceResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return ProfessionalServiceResourceResponseProperties(
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      billingPeriod: (() { final guardedValue = map['billingPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: pulumi.Input.fromValue(map['created'] as String),
      isFreeTrial: (() { final guardedValue = map['isFreeTrial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offerId: (() { final guardedValue = map['offerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentChannelMetadata: (() { final guardedValue = map['paymentChannelMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      paymentChannelType: (() { final guardedValue = map['paymentChannelType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherId: (() { final guardedValue = map['publisherId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quoteId: (() { final guardedValue = map['quoteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuId: (() { final guardedValue = map['skuId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storeFront: (() { final guardedValue = map['storeFront']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      term: (() { final guardedValue = map['term']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProfessionalServicePropertiesResponseTerm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      termUnit: (() { final guardedValue = map['termUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
