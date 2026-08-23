// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Detail {
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [Detail].
  /// [key] Required.
  /// [value] Required.
  const Detail({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory Detail.fromMap(Map<String, dynamic> map) {
    return Detail(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
