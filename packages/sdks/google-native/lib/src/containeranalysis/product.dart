// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Product contains information about a product and how to uniquely identify it.
class Product {
  /// Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  final pulumi.Input<String>? genericUri;
  /// Token that identifies a product so that it can be referred to from other parts in the document. There is no predefined format as long as it uniquely identifies a group in the context of the current document.
  final pulumi.Input<String>? id;
  /// Name of the product.
  final pulumi.Input<String>? name;

  /// Creates a new [Product].
  /// [genericUri] Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  /// [id] Token that identifies a product so that it can be referred to from other parts in the document. There is no predefined format as long as it uniquely identifies a group in the context of the current document.
  /// [name] Name of the product.
  Product({
    this.genericUri,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genericUri': ?genericUri,
      'id': ?id,
      'name': ?name,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      genericUri: map['genericUri'] == null ? null : (map['genericUri']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

