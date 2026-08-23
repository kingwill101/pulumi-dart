// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// properties for creation saas
class SaasCreationProperties {
  /// Whether the SaaS subscription will auto renew upon term end.
  final pulumi.Input<bool>? autoRenew;
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
  /// The current Term id.
  final pulumi.Input<String>? termId;

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
  const SaasCreationProperties({
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
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      offerId: (() { final guardedValue = map['offerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentChannelMetadata: (() { final guardedValue = map['paymentChannelMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      paymentChannelType: (() { final guardedValue = map['paymentChannelType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherId: (() { final guardedValue = map['publisherId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherTestEnvironment: (() { final guardedValue = map['publisherTestEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quantity: (() { final guardedValue = map['quantity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      saasResourceName: (() { final guardedValue = map['saasResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saasSessionId: (() { final guardedValue = map['saasSessionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saasSubscriptionId: (() { final guardedValue = map['saasSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuId: (() { final guardedValue = map['skuId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      termId: (() { final guardedValue = map['termId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
