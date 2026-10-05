// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_value_response.dart';

/// Result data returned by getProduct.
class GetProductResult {
  /// User-provided metadata to be stored with this product. Must be at most 4096 characters long.
  final String? description;
  /// The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.
  final String? displayName;
  /// The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.
  final String? name;
  /// Immutable. The category for the product identified by the reference image. This should be one of "homegoods-v2", "apparel-v2", "toys-v2", "packagedgoods-v1" or "general-v1". The legacy categories "homegoods", "apparel", and "toys" are still supported, but these should not be used for new products.
  final String? productCategory;
  /// Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels. Note that integer values can be provided as strings, e.g. "1199". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product_labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.
  final List<KeyValueResponse>? productLabels;

  /// Creates a new [GetProductResult].
  /// [description] User-provided metadata to be stored with this product. Must be at most 4096 characters long.
  /// [displayName] The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.
  /// [name] The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.
  /// [productCategory] Immutable. The category for the product identified by the reference image. This should be one of "homegoods-v2", "apparel-v2", "toys-v2", "packagedgoods-v1" or "general-v1". The legacy categories "homegoods", "apparel", and "toys" are still supported, but these should not be used for new products.
  /// [productLabels] Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels. Note that integer values can be provided as strings, e.g. "1199". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product_labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.
  const GetProductResult({
    this.description,
    this.displayName,
    this.name,
    this.productCategory,
    this.productLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'productCategory': ?productCategory,
      'productLabels': ?(() { final guardedValue = productLabels; if (guardedValue == null) return null; return pulumi.Input.encodeList<KeyValueResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetProductResult.fromMap(Map<String, dynamic> map) {
    return GetProductResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productCategory: (() { final guardedValue = map['productCategory']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productLabels: (() { final guardedValue = map['productLabels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeyValueResponse>(guardedValue, (value) => KeyValueResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
