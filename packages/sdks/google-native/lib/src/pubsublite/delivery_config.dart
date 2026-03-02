// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_config_delivery_requirement.dart';

/// The settings for a subscription's message delivery.
class DeliveryConfig {
  /// The DeliveryRequirement for this subscription.
  final pulumi.Input<DeliveryConfigDeliveryRequirement>? deliveryRequirement;

  /// Creates a new [DeliveryConfig].
  /// [deliveryRequirement] The DeliveryRequirement for this subscription.
  DeliveryConfig({
    this.deliveryRequirement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryRequirement': ?pulumi.Input.mapOptionalInputValue<DeliveryConfigDeliveryRequirement, String>(deliveryRequirement, (value) => value.value),
    };
  }

  factory DeliveryConfig.fromMap(Map<String, dynamic> map) {
    return DeliveryConfig(
      deliveryRequirement: map['deliveryRequirement'] == null ? null : (DeliveryConfigDeliveryRequirement.fromValue(map['deliveryRequirement']! as String)).input(),
    );
  }
}

