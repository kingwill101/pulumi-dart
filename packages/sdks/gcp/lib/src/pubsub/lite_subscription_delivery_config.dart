// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LiteSubscriptionDeliveryConfig {
  /// When this subscription should send messages to subscribers relative to messages persistence in storage.
  /// Possible values are: `DELIVER_IMMEDIATELY`, `DELIVER_AFTER_STORED`, `DELIVERY_REQUIREMENT_UNSPECIFIED`.
  final pulumi.Input<String> deliveryRequirement;

  /// Creates a new [LiteSubscriptionDeliveryConfig].
  /// [deliveryRequirement] When this subscription should send messages to subscribers relative to messages persistence in storage.
  const LiteSubscriptionDeliveryConfig({
    required this.deliveryRequirement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryRequirement': deliveryRequirement,
    };
  }

  factory LiteSubscriptionDeliveryConfig.fromMap(Map<String, dynamic> map) {
    return LiteSubscriptionDeliveryConfig(
      deliveryRequirement: pulumi.Input.fromValue(map['deliveryRequirement'] as String),
    );
  }
}

