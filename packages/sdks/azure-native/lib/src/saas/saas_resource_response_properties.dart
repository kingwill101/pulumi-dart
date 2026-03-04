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
      'term':
          ?pulumi.Input.mapOptionalInputValue<
            SaasPropertiesResponseTerm,
            Map<String, dynamic>
          >(term, (value) => value.toMap()),
      'termId': ?termId,
    };
  }

  factory SaasResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return SaasResourceResponseProperties(
      autoRenew: (() {
        final guardedValue = map['autoRenew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      created: pulumi.Input.fromValue(map['created'] as String),
      isFreeTrial: (() {
        final guardedValue = map['isFreeTrial'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      lastModified: (() {
        final guardedValue = map['lastModified'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      offerId: (() {
        final guardedValue = map['offerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentChannelMetadata: (() {
        final guardedValue = map['paymentChannelMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      paymentChannelType: (() {
        final guardedValue = map['paymentChannelType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publisherId: (() {
        final guardedValue = map['publisherId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publisherTestEnvironment: (() {
        final guardedValue = map['publisherTestEnvironment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      quantity: (() {
        final guardedValue = map['quantity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      saasResourceName: (() {
        final guardedValue = map['saasResourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      saasSessionId: (() {
        final guardedValue = map['saasSessionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      saasSubscriptionId: (() {
        final guardedValue = map['saasSubscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skuId: (() {
        final guardedValue = map['skuId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      term: (() {
        final guardedValue = map['term'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SaasPropertiesResponseTerm.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      termId: (() {
        final guardedValue = map['termId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
