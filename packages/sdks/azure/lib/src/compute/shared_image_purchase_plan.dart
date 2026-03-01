// ignore_for_file: unused_element, unnecessary_cast


class SharedImagePurchasePlan {
  /// The Purchase Plan Name for this Shared Image. Changing this forces a new resource to be created.
  final String name;
  /// The Purchase Plan Product for this Gallery Image. Changing this forces a new resource to be created.
  final String? product;
  /// The Purchase Plan Publisher for this Gallery Image. Changing this forces a new resource to be created.
  final String? publisher;

  /// Creates a new [SharedImagePurchasePlan].
  /// [name] The Purchase Plan Name for this Shared Image. Changing this forces a new resource to be created.
  /// [product] The Purchase Plan Product for this Gallery Image. Changing this forces a new resource to be created.
  /// [publisher] The Purchase Plan Publisher for this Gallery Image. Changing this forces a new resource to be created.
  SharedImagePurchasePlan({
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
      name: map['name'] as String,
      product: map['product'] == null ? null : map['product'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
    );
  }
}

