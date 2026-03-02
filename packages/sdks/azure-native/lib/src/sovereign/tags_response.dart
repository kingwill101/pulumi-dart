// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key-value pairs that can be assigned to this resource.
class TagsResponse {
  /// A tag name.
  final pulumi.Input<String> name;
  /// A tag value.
  final pulumi.Input<String>? value;

  /// Creates a new [TagsResponse].
  /// [name] A tag name.
  /// [value] A tag value.
  TagsResponse({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
    };
  }

  factory TagsResponse.fromMap(Map<String, dynamic> map) {
    return TagsResponse(
      name: (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

