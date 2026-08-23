// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_value.dart';

/// {@template pulumi_vision_v1_product_args_doc}
/// The set of arguments for Product.
/// {@endtemplate}
/// {@macro pulumi_vision_v1_product_args_doc}
class ProductArgs {
  /// User-provided metadata to be stored with this product. Must be at most 4096 characters long.
  final pulumi.Input<String>? description;
  /// The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  /// The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.
  final pulumi.Input<String>? name;
  /// Immutable. The category for the product identified by the reference image. This should be one of "homegoods-v2", "apparel-v2", "toys-v2", "packagedgoods-v1" or "general-v1". The legacy categories "homegoods", "apparel", and "toys" are still supported, but these should not be used for new products.
  final pulumi.Input<String>? productCategory;
  /// A user-supplied resource id for this Product. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  final pulumi.Input<String>? productId;
  /// Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels. Note that integer values can be provided as strings, e.g. "1199". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product_labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.
  final pulumi.Input<List<KeyValue>>? productLabels;
  final pulumi.Input<String>? project;

  /// Creates a new [ProductArgs].
  /// [description] User-provided metadata to be stored with this product. Must be at most 4096 characters long.
  /// [displayName] The user-provided name for this Product. Must not be empty. Must be at most 4096 characters long.
  /// [location] Optional.
  /// [name] The resource name of the product. Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is ignored when creating a product.
  /// [productCategory] Immutable. The category for the product identified by the reference image. This should be one of "homegoods-v2", "apparel-v2", "toys-v2", "packagedgoods-v1" or "general-v1". The legacy categories "homegoods", "apparel", and "toys" are still supported, but these should not be used for new products.
  /// [productId] A user-supplied resource id for this Product. If set, the server will attempt to use this value as the resource id. If it is already in use, an error is returned with code ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the character `/`.
  /// [productLabels] Key-value pairs that can be attached to a product. At query time, constraints can be specified based on the product_labels. Note that integer values can be provided as strings, e.g. "1199". Only strings with integer values can match a range-based restriction which is to be supported soon. Multiple values can be assigned to the same key. One product may have up to 500 product_labels. Notice that the total number of distinct product_labels over all products in one ProductSet cannot exceed 1M, otherwise the product search pipeline will refuse to work for that ProductSet.
  /// [project] Optional.
  const ProductArgs({
    this.description,
    this.displayName,
    this.location,
    this.name,
    this.productCategory,
    this.productId,
    this.productLabels,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'productCategory': ?productCategory,
      'productId': ?productId,
      'productLabels': ?pulumi.Input.mapOptionalInputValue<List<KeyValue>, List<Map<String, dynamic>>>(productLabels, (value) => pulumi.Input.encodeList<KeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
    };
  }

  factory ProductArgs.fromMap(Map<String, dynamic> map) {
    return ProductArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productCategory: (() { final guardedValue = map['productCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productLabels: (() { final guardedValue = map['productLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KeyValue>(guardedValue, (value) => KeyValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
