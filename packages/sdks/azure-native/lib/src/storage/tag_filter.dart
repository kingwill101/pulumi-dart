// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Blob index tag based filtering for blob objects
class TagFilter {
  /// This is the filter tag name, it can have 1 - 128 characters
  final pulumi.Input<String> name;
  /// This is the comparison operator which is used for object comparison and filtering. Only == (equality operator) is currently supported
  final pulumi.Input<String> op;
  /// This is the filter tag value field used for tag based filtering, it can have 0 - 256 characters
  final pulumi.Input<String> value;

  /// Creates a new [TagFilter].
  /// [name] This is the filter tag name, it can have 1 - 128 characters
  /// [op] This is the comparison operator which is used for object comparison and filtering. Only == (equality operator) is currently supported
  /// [value] This is the filter tag value field used for tag based filtering, it can have 0 - 256 characters
  const TagFilter({
    required this.name,
    required this.op,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'op': op,
      'value': value,
    };
  }

  factory TagFilter.fromMap(Map<String, dynamic> map) {
    return TagFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      op: pulumi.Input.fromValue(map['op'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
