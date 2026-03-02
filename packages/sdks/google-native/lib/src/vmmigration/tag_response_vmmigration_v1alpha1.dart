// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tag is an AWS tag representation.
class TagResponseVmmigrationV1alpha1 {
  /// Key of tag.
  final pulumi.Input<String> key;
  /// Value of tag.
  final pulumi.Input<String> value;

  /// Creates a new [TagResponseVmmigrationV1alpha1].
  /// [key] Key of tag.
  /// [value] Value of tag.
  TagResponseVmmigrationV1alpha1({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory TagResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return TagResponseVmmigrationV1alpha1(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

