// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Blob index tag based filtering for blob objects
class TagFilterResponse {
  /// This is the filter tag name, it can have 1 - 128 characters
  final pulumi.Input<String> name;
  /// This is the comparison operator which is used for object comparison and filtering. Only == (equality operator) is currently supported
  final pulumi.Input<String> op;
  /// This is the filter tag value field used for tag based filtering, it can have 0 - 256 characters
  final pulumi.Input<String> value;

  /// Creates a new [TagFilterResponse].
  /// [name] This is the filter tag name, it can have 1 - 128 characters
  /// [op] This is the comparison operator which is used for object comparison and filtering. Only == (equality operator) is currently supported
  /// [value] This is the filter tag value field used for tag based filtering, it can have 0 - 256 characters
  TagFilterResponse({
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

  factory TagFilterResponse.fromMap(Map<String, dynamic> map) {
    return TagFilterResponse(
      name: (map['name'] as String).input(),
      op: (map['op'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

