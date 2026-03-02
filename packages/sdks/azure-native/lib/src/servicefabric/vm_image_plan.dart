// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use. In the Azure portal, find the marketplace image that you want to use and then click Want to deploy programmatically, Get Started ->. Enter any required information and then click Save.
class VmImagePlan {
  /// The plan ID.
  final pulumi.Input<String>? name;
  /// Specifies the product of the image from the marketplace. This is the same value as Offer under the imageReference element.
  final pulumi.Input<String>? product;
  /// The promotion code.
  final pulumi.Input<String>? promotionCode;
  /// The publisher ID.
  final pulumi.Input<String>? publisher;

  /// Creates a new [VmImagePlan].
  /// [name] The plan ID.
  /// [product] Specifies the product of the image from the marketplace. This is the same value as Offer under the imageReference element.
  /// [promotionCode] The promotion code.
  /// [publisher] The publisher ID.
  VmImagePlan({
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

  factory VmImagePlan.fromMap(Map<String, dynamic> map) {
    return VmImagePlan(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      product: map['product'] == null ? null : (map['product']! as String).input(),
      promotionCode: map['promotionCode'] == null ? null : (map['promotionCode']! as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
    );
  }
}

