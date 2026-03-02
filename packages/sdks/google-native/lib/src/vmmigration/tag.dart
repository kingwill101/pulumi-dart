// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tag is an AWS tag representation.
class Tag {
  /// Key of tag.
  final pulumi.Input<String>? key;
  /// Value of tag.
  final pulumi.Input<String>? value;

  /// Creates a new [Tag].
  /// [key] Key of tag.
  /// [value] Value of tag.
  Tag({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory Tag.fromMap(Map<String, dynamic> map) {
    return Tag(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

