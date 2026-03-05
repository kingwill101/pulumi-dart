// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachinePlan {
  /// Specifies the name of the image from the marketplace.
  final pulumi.Input<String> name;
  /// Specifies the product of the image from the marketplace.
  final pulumi.Input<String> product;
  /// Specifies the publisher of the image.
  final pulumi.Input<String> publisher;

  /// Creates a new [VirtualMachinePlan].
  /// [name] Specifies the name of the image from the marketplace.
  /// [product] Specifies the product of the image from the marketplace.
  /// [publisher] Specifies the publisher of the image.
  VirtualMachinePlan({
    required this.name,
    required this.product,
    required this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product': product,
      'publisher': publisher,
    };
  }

  factory VirtualMachinePlan.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePlan(
      name: pulumi.Input.fromValue(map['name'] as String),
      product: pulumi.Input.fromValue(map['product'] as String),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
    );
  }
}

