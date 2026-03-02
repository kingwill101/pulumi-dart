// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTestGrokPatternTestGrokAttribute {
  /// The attribute name.
  final pulumi.Input<String> name;
  /// A string representation of the extracted value (which might not be a String).
  final pulumi.Input<String> value;

  /// Creates a new [GetTestGrokPatternTestGrokAttribute].
  /// [name] The attribute name.
  /// [value] A string representation of the extracted value (which might not be a String).
  GetTestGrokPatternTestGrokAttribute({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetTestGrokPatternTestGrokAttribute.fromMap(Map<String, dynamic> map) {
    return GetTestGrokPatternTestGrokAttribute(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

