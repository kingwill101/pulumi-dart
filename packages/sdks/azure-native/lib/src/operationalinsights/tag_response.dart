// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A tag of a saved search.
class TagResponse {
  /// The tag name.
  final pulumi.Input<String> name;
  /// The tag value.
  final pulumi.Input<String> value;

  /// Creates a new [TagResponse].
  /// [name] The tag name.
  /// [value] The tag value.
  const TagResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory TagResponse.fromMap(Map<String, dynamic> map) {
    return TagResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

