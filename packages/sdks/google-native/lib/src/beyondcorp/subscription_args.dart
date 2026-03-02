// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_sku.dart';
import 'subscription_type.dart';

/// {@template pulumi_beyondcorp_v1alpha_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_subscription_args_doc}
class SubscriptionArgs {
  final pulumi.Input<String>? location;
  /// Unique resource name of the Subscription. The name is ignored when creating a subscription.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Optional. Number of seats in the subscription.
  final pulumi.Input<String>? seatCount;
  /// SKU of subscription.
  final pulumi.Input<SubscriptionSku> sku;
  /// Type of subscription.
  final pulumi.Input<SubscriptionType> type;

  /// Creates a new [SubscriptionArgs].
  /// [location] Optional.
  /// [name] Unique resource name of the Subscription. The name is ignored when creating a subscription.
  /// [organizationId] Required.
  /// [seatCount] Optional. Number of seats in the subscription.
  /// [sku] SKU of subscription.
  /// [type] Type of subscription.
  SubscriptionArgs({
    this.location,
    this.name,
    required this.organizationId,
    this.seatCount,
    required this.sku,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'organizationId': organizationId,
      'seatCount': ?seatCount,
      'sku': pulumi.Input.mapInputValue<SubscriptionSku, String>(sku, (value) => value.value),
      'type': pulumi.Input.mapInputValue<SubscriptionType, String>(type, (value) => value.value),
    };
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      seatCount: map['seatCount'] == null ? null : (map['seatCount'] as String).input(),
      sku: (SubscriptionSku.fromValue(map['sku'] as String)).input(),
      type: (SubscriptionType.fromValue(map['type'] as String)).input(),
    );
  }
}

