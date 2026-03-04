// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Product contains information about a product and how to uniquely identify it.
class ProductContaineranalysisV1beta1 {
  /// Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  final pulumi.Input<String>? genericUri;

  /// Token that identifies a product so that it can be referred to from other parts in the document. There is no predefined format as long as it uniquely identifies a group in the context of the current document.
  final pulumi.Input<String>? id;

  /// Name of the product.
  final pulumi.Input<String>? name;

  /// Creates a new [ProductContaineranalysisV1beta1].
  /// [genericUri] Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  /// [id] Token that identifies a product so that it can be referred to from other parts in the document. There is no predefined format as long as it uniquely identifies a group in the context of the current document.
  /// [name] Name of the product.
  ProductContaineranalysisV1beta1({this.genericUri, this.id, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genericUri': ?genericUri,
      'id': ?id,
      'name': ?name,
    };
  }

  factory ProductContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return ProductContaineranalysisV1beta1(
      genericUri: (() {
        final guardedValue = map['genericUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
