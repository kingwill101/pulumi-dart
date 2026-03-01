// ignore_for_file: unused_element, unnecessary_cast


/// properties for creation saas
class SaasCreationProperties {
  /// Whether the SaaS subscription will auto renew upon term end.
  final bool? autoRenew;
  /// The offer id.
  final String? offerId;
  /// The metadata about the SaaS subscription such as the AzureSubscriptionId and ResourceUri.
  final Map<String, String>? paymentChannelMetadata;
  /// The Payment channel for the SaasSubscription.
  final String? paymentChannelType;
  /// The publisher id.
  final String? publisherId;
  /// The environment in the publisher side for this resource.
  final String? publisherTestEnvironment;
  /// The seat count.
  final double? quantity;
  /// The SaaS resource name.
  final String? saasResourceName;
  /// The saas session id used for dev service migration request.
  final String? saasSessionId;
  /// The saas subscription id used for tenant to subscription level migration request.
  final String? saasSubscriptionId;
  /// The plan id.
  final String? skuId;
  /// The current Term id.
  final String? termId;

  /// Creates a new [SaasCreationProperties].
  /// [autoRenew] Whether the SaaS subscription will auto renew upon term end.
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
  /// [termId] The current Term id.
  SaasCreationProperties({
    this.autoRenew,
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
    this.termId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
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
      'termId': ?termId,
    };
  }

  factory SaasCreationProperties.fromMap(Map<String, dynamic> map) {
    return SaasCreationProperties(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      offerId: map['offerId'] == null ? null : map['offerId'] as String,
      paymentChannelMetadata: map['paymentChannelMetadata'] == null ? null : (map['paymentChannelMetadata'] as Map).cast<String, String>(),
      paymentChannelType: map['paymentChannelType'] == null ? null : map['paymentChannelType'] as String,
      publisherId: map['publisherId'] == null ? null : map['publisherId'] as String,
      publisherTestEnvironment: map['publisherTestEnvironment'] == null ? null : map['publisherTestEnvironment'] as String,
      quantity: map['quantity'] == null ? null : map['quantity'] as double,
      saasResourceName: map['saasResourceName'] == null ? null : map['saasResourceName'] as String,
      saasSessionId: map['saasSessionId'] == null ? null : map['saasSessionId'] as String,
      saasSubscriptionId: map['saasSubscriptionId'] == null ? null : map['saasSubscriptionId'] as String,
      skuId: map['skuId'] == null ? null : map['skuId'] as String,
      termId: map['termId'] == null ? null : map['termId'] as String,
    );
  }
}

