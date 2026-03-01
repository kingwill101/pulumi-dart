// ignore_for_file: unused_element, unnecessary_cast


/// The settings for a subscription's message delivery.
class DeliveryConfigResponse {
  /// The DeliveryRequirement for this subscription.
  final String deliveryRequirement;

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
      deliveryRequirement: map['deliveryRequirement'] as String,
    );
  }
}

