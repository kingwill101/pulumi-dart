// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an object for the byproducts field in in-toto links. The suggested fields are "stderr", "stdout", and "return-value".
class ByProducts {
  final pulumi.Input<Map<String, String>>? customValues;

  /// Creates a new [ByProducts].
  /// [customValues] Optional.
  ByProducts({this.customValues});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'customValues': ?customValues};
  }

  factory ByProducts.fromMap(Map<String, dynamic> map) {
    return ByProducts(
      customValues: (() {
        final guardedValue = map['customValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
