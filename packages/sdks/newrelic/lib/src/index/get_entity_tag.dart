// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEntityTag {
  /// The tag key.
  final pulumi.Input<String> key;
  /// The tag value.
  final pulumi.Input<String> value;

  /// Creates a new [GetEntityTag].
  /// [key] The tag key.
  /// [value] The tag value.
  GetEntityTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetEntityTag.fromMap(Map<String, dynamic> map) {
    return GetEntityTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

