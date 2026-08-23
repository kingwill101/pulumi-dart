// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ElementType {
  final pulumi.Input<String> elementType;

  /// Creates a new [ElementType].
  /// [elementType] Required.
  const ElementType({
    required this.elementType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementType': elementType,
    };
  }

  factory ElementType.fromMap(Map<String, dynamic> map) {
    return ElementType(
      elementType: pulumi.Input.fromValue(map['elementType'] as String),
    );
  }
}
