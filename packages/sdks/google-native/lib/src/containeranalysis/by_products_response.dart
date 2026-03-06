// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an object for the byproducts field in in-toto links. The suggested fields are "stderr", "stdout", and "return-value".
class ByProductsResponse {
  final pulumi.Input<Map<String, String>> customValues;

  /// Creates a new [ByProductsResponse].
  /// [customValues] Required.
  const ByProductsResponse({
    required this.customValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customValues': customValues,
    };
  }

  factory ByProductsResponse.fromMap(Map<String, dynamic> map) {
    return ByProductsResponse(
      customValues: pulumi.Input.fromValue((map['customValues'] as Map).cast<String, String>()),
    );
  }
}

