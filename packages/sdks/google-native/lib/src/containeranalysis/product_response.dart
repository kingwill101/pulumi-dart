// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Product contains information about a product and how to uniquely identify it.
class ProductResponse {
  /// Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  final pulumi.Input<String> genericUri;
  /// Name of the product.
  final pulumi.Input<String> name;

  /// Creates a new [ProductResponse].
  /// [genericUri] Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  /// [name] Name of the product.
  ProductResponse({
    required this.genericUri,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genericUri': genericUri,
      'name': name,
    };
  }

  factory ProductResponse.fromMap(Map<String, dynamic> map) {
    return ProductResponse(
      genericUri: pulumi.Input.fromValue(map['genericUri'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

