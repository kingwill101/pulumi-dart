// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSharedImagePurchasePlan {
  /// The name of the Shared Image.
  final pulumi.Input<String> name;

  /// (Optional) The Purchase Plan Product for this Gallery Image.
  final pulumi.Input<String> product;

  /// (Optional) The Purchase Plan Publisher for this Gallery Image.
  final pulumi.Input<String> publisher;

  /// Creates a new [GetSharedImagePurchasePlan].
  /// [name] The name of the Shared Image.
  /// [product] (Optional) The Purchase Plan Product for this Gallery Image.
  /// [publisher] (Optional) The Purchase Plan Publisher for this Gallery Image.
  GetSharedImagePurchasePlan({
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

  factory GetSharedImagePurchasePlan.fromMap(Map<String, dynamic> map) {
    return GetSharedImagePurchasePlan(
      name: pulumi.Input.fromValue(map['name'] as String),
      product: pulumi.Input.fromValue(map['product'] as String),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
    );
  }
}
