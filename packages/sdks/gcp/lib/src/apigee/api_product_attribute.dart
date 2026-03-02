// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiProductAttribute {
  /// Key of the attribute.
  final pulumi.Input<String>? name;
  /// Value of the attribute.
  final pulumi.Input<String>? value;

  /// Creates a new [ApiProductAttribute].
  /// [name] Key of the attribute.
  /// [value] Value of the attribute.
  ApiProductAttribute({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ApiProductAttribute.fromMap(Map<String, dynamic> map) {
    return ApiProductAttribute(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

