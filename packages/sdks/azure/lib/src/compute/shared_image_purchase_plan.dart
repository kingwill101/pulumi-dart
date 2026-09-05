// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SharedImagePurchasePlan {
  /// The Purchase Plan Name for this Shared Image. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// The Purchase Plan Product for this Gallery Image. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? product;
  /// The Purchase Plan Publisher for this Gallery Image. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? publisher;

  /// Creates a new [SharedImagePurchasePlan].
  /// [name] The Purchase Plan Name for this Shared Image. Changing this forces a new resource to be created.
  /// [product] The Purchase Plan Product for this Gallery Image. Changing this forces a new resource to be created.
  /// [publisher] The Purchase Plan Publisher for this Gallery Image. Changing this forces a new resource to be created.
  const SharedImagePurchasePlan({
    required this.name,
    this.product,
    this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'product': ?product,
      'publisher': ?publisher,
    };
  }

  factory SharedImagePurchasePlan.fromMap(Map<String, dynamic> map) {
    return SharedImagePurchasePlan(
      name: pulumi.Input.fromValue(map['name'] as String),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
