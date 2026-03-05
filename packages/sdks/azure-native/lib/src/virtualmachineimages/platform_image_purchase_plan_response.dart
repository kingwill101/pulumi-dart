// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Purchase plan configuration for platform image.
class PlatformImagePurchasePlanResponse {
  /// Name of the purchase plan.
  final pulumi.Input<String> planName;
  /// Product of the purchase plan.
  final pulumi.Input<String> planProduct;
  /// Publisher of the purchase plan.
  final pulumi.Input<String> planPublisher;

  /// Creates a new [PlatformImagePurchasePlanResponse].
  /// [planName] Name of the purchase plan.
  /// [planProduct] Product of the purchase plan.
  /// [planPublisher] Publisher of the purchase plan.
  PlatformImagePurchasePlanResponse({
    required this.planName,
    required this.planProduct,
    required this.planPublisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planName': planName,
      'planProduct': planProduct,
      'planPublisher': planPublisher,
    };
  }

  factory PlatformImagePurchasePlanResponse.fromMap(Map<String, dynamic> map) {
    return PlatformImagePurchasePlanResponse(
      planName: pulumi.Input.fromValue(map['planName'] as String),
      planProduct: pulumi.Input.fromValue(map['planProduct'] as String),
      planPublisher: pulumi.Input.fromValue(map['planPublisher'] as String),
    );
  }
}

