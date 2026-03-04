// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StandardWebTestRequestHeader {
  /// The name which should be used for a header in the request.
  final pulumi.Input<String> name;

  /// The value which should be used for a header in the request.
  final pulumi.Input<String> value;

  /// Creates a new [StandardWebTestRequestHeader].
  /// [name] The name which should be used for a header in the request.
  /// [value] The value which should be used for a header in the request.
  StandardWebTestRequestHeader({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory StandardWebTestRequestHeader.fromMap(Map<String, dynamic> map) {
    return StandardWebTestRequestHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
