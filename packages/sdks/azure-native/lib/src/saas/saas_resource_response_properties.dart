// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'saas_properties_response_term.dart';

/// saas properties
class SaasResourceResponseProperties {
  /// Whether the SaaS subscription will auto renew upon term end.
  final pulumi.Input<bool>? autoRenew;
  /// The created date of this resource.
  final pulumi.Input<String> created;
  /// Whether the current term is a Free Trial term
  final pulumi.Input<bool>? isFreeTrial;
  /// The last modifier date if this resource.
  final pulumi.Input<String>? lastModified;
  /// The offer id.
  final pulumi.Input<String>? offerId;
  /// The metadata about the SaaS subscription such as the AzureSubscriptionId and ResourceUri.
  final pulumi.Input<Map<String, String>>? paymentChannelMetadata;
  /// The Payment channel for the SaasSubscription.
  final pulumi.Input<String>? paymentChannelType;
  /// The publisher id.
  final pulumi.Input<String>? publisherId;
  /// The environment in the publisher side for this resource.
  final pulumi.Input<String>? publisherTestEnvironment;
  /// The seat count.
  final pulumi.Input<double>? quantity;
  /// The SaaS resource name.
  final pulumi.Input<String>? saasResourceName;
  /// The saas session id used for dev service migration request.
  final pulumi.Input<String>? saasSessionId;
  /// The saas subscription id used for tenant to subscription level migration request.
  final pulumi.Input<String>? saasSubscriptionId;
  /// The plan id.
  final pulumi.Input<String>? skuId;
  /// The SaaS Subscription Status.
  final pulumi.Input<String>? status;
  /// The current Term object.
  final pulumi.Input<SaasPropertiesResponseTerm>? term;
  /// The current Term id.
  final pulumi.Input<String>? termId;

  /// Creates a new [SaasResourceResponseProperties].
  /// [autoRenew] Whether the SaaS subscription will auto renew upon term end.
  /// [created] The created date of this resource.
  /// [isFreeTrial] Whether the current term is a Free Trial term
  /// [lastModified] The last modifier date if this resource.
  /// [offerId] The offer id.
  /// [paymentChannelMetadata] The metadata about the SaaS subscription such as the AzureSubscriptionId and ResourceUri.
  /// [paymentChannelType] The Payment channel for the SaasSubscription.
  /// [publisherId] The publisher id.
  /// [publisherTestEnvironment] The environment in the publisher side for this resource.
  /// [quantity] The seat count.
  /// [saasResourceName] The SaaS resource name.
  /// [saasSessionId] The saas session id used for dev service migration request.
  /// [saasSubscriptionId] The saas subscription id used for tenant to subscription level migration request.
  /// [skuId] The plan id.
  /// [status] The SaaS Subscription Status.
  /// [term] The current Term object.
  /// [termId] The current Term id.
  SaasResourceResponseProperties({
    this.autoRenew,
    required this.created,
    this.isFreeTrial,
    this.lastModified,
    this.offerId,
    this.paymentChannelMetadata,
    this.paymentChannelType,
    this.publisherId,
    this.publisherTestEnvironment,
    this.quantity,
    this.saasResourceName,
    this.saasSessionId,
    this.saasSubscriptionId,
    this.skuId,
    this.status,
    this.term,
    this.termId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'created': created,
      'isFreeTrial': ?isFreeTrial,
      'lastModified': ?lastModified,
      'offerId': ?offerId,
      'paymentChannelMetadata': ?paymentChannelMetadata,
      'paymentChannelType': ?paymentChannelType,
      'publisherId': ?publisherId,
      'publisherTestEnvironment': ?publisherTestEnvironment,
      'quantity': ?quantity,
      'saasResourceName': ?saasResourceName,
      'saasSessionId': ?saasSessionId,
      'saasSubscriptionId': ?saasSubscriptionId,
      'skuId': ?skuId,
      'status': ?status,
      'term': ?pulumi.Input.mapOptionalInputValue<SaasPropertiesResponseTerm, Map<String, dynamic>>(term, (value) => value.toMap()),
      'termId': ?termId,
    };
  }

  factory SaasResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return SaasResourceResponseProperties(
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      created: (map['created'] as String).input(),
      isFreeTrial: map['isFreeTrial'] == null ? null : (map['isFreeTrial'] as bool).input(),
      lastModified: map['lastModified'] == null ? null : (map['lastModified'] as String).input(),
      offerId: map['offerId'] == null ? null : (map['offerId'] as String).input(),
      paymentChannelMetadata: map['paymentChannelMetadata'] == null ? null : ((map['paymentChannelMetadata'] as Map).cast<String, String>()).input(),
      paymentChannelType: map['paymentChannelType'] == null ? null : (map['paymentChannelType'] as String).input(),
      publisherId: map['publisherId'] == null ? null : (map['publisherId'] as String).input(),
      publisherTestEnvironment: map['publisherTestEnvironment'] == null ? null : (map['publisherTestEnvironment'] as String).input(),
      quantity: map['quantity'] == null ? null : (map['quantity'] as double).input(),
      saasResourceName: map['saasResourceName'] == null ? null : (map['saasResourceName'] as String).input(),
      saasSessionId: map['saasSessionId'] == null ? null : (map['saasSessionId'] as String).input(),
      saasSubscriptionId: map['saasSubscriptionId'] == null ? null : (map['saasSubscriptionId'] as String).input(),
      skuId: map['skuId'] == null ? null : (map['skuId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      term: map['term'] == null ? null : (SaasPropertiesResponseTerm.fromMap((map['term'] as Map).cast<String, dynamic>())).input(),
      termId: map['termId'] == null ? null : (map['termId'] as String).input(),
    );
  }
}

