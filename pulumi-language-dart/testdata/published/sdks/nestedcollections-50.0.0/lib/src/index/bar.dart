// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Bar {
  final pulumi.Input<String> prop;

  /// Creates a new [Bar].
  /// [prop] Required.
  const Bar({
    required this.prop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prop': prop,
    };
  }

  factory Bar.fromMap(Map<String, dynamic> map) {
    return Bar(
      prop: pulumi.Input.fromValue(map['prop'] as String),
    );
  }
}
