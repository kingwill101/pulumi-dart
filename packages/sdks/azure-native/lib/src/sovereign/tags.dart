// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key-value pairs that can be assigned to this resource.
class Tags {
  /// A tag name.
  final pulumi.Input<String> name;
  /// A tag value.
  final pulumi.Input<String>? value;

  /// Creates a new [Tags].
  /// [name] A tag name.
  /// [value] A tag value.
  Tags({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
    };
  }

  factory Tags.fromMap(Map<String, dynamic> map) {
    return Tags(
      name: (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

