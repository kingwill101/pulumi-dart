// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings for a subscription's message delivery.
class DeliveryConfigResponse {
  /// The DeliveryRequirement for this subscription.
  final pulumi.Input<String> deliveryRequirement;

  /// Creates a new [DeliveryConfigResponse].
  /// [deliveryRequirement] The DeliveryRequirement for this subscription.
  DeliveryConfigResponse({
    required this.deliveryRequirement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryRequirement': deliveryRequirement,
    };
  }

  factory DeliveryConfigResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryConfigResponse(
      deliveryRequirement: pulumi.Input.fromValue(map['deliveryRequirement'] as String),
    );
  }
}

