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
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> organizationId,
    pulumi.Output<String>? seatCount,
    required pulumi.Output<SubscriptionSku> sku,
    required pulumi.Output<SubscriptionType> type,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      seatCount = pulumi.Input.asOptionalInput<String>(seatCount),
      sku = pulumi.Input.asInput<SubscriptionSku>(sku),
      type = pulumi.Input.asInput<SubscriptionType>(type);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      seatCount: map['seatCount'] == null ? null : pulumi.Output.create<String>(map['seatCount'] as String),
      sku: pulumi.Output.create<SubscriptionSku>(SubscriptionSku.fromValue(map['sku'] as String)),
      type: pulumi.Output.create<SubscriptionType>(SubscriptionType.fromValue(map['type'] as String)),
    );
  }
}

