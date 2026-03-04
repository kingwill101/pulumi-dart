// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tag is an AWS tag representation.
class TagResponse {
  /// Key of tag.
  final pulumi.Input<String> key;

  /// Value of tag.
  final pulumi.Input<String> value;

  /// Creates a new [TagResponse].
  /// [key] Key of tag.
  /// [value] Value of tag.
  TagResponse({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory TagResponse.fromMap(Map<String, dynamic> map) {
    return TagResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
