// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An item of the class.
class ClassItemResponse {
  /// The class item's value.
  final pulumi.Input<String> value;

  /// Creates a new [ClassItemResponse].
  /// [value] The class item's value.
  ClassItemResponse({required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': value};
  }

  factory ClassItemResponse.fromMap(Map<String, dynamic> map) {
    return ClassItemResponse(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
