// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use. In the Azure portal, find the marketplace image that you want to use and then click Want to deploy programmatically, Get Started -&gt;. Enter any required information and then click Save.
class VmImagePlanResponse {
  /// The plan ID.
  final pulumi.Input<String>? name;
  /// Specifies the product of the image from the marketplace. This is the same value as Offer under the imageReference element.
  final pulumi.Input<String>? product;
  /// The promotion code.
  final pulumi.Input<String>? promotionCode;
  /// The publisher ID.
  final pulumi.Input<String>? publisher;

  /// Creates a new [VmImagePlanResponse].
  /// [name] The plan ID.
  /// [product] Specifies the product of the image from the marketplace. This is the same value as Offer under the imageReference element.
  /// [promotionCode] The promotion code.
  /// [publisher] The publisher ID.
  const VmImagePlanResponse({
    this.name,
    this.product,
    this.promotionCode,
    this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'product': ?product,
      'promotionCode': ?promotionCode,
      'publisher': ?publisher,
    };
  }

  factory VmImagePlanResponse.fromMap(Map<String, dynamic> map) {
    return VmImagePlanResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promotionCode: (() { final guardedValue = map['promotionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

