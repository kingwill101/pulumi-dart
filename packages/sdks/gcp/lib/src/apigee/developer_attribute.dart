// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeveloperAttribute {
  /// Key of the attribute
  final pulumi.Input<String>? name;
  /// Value of the attribute
  final pulumi.Input<String>? value;

  /// Creates a new [DeveloperAttribute].
  /// [name] Key of the attribute
  /// [value] Value of the attribute
  DeveloperAttribute({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory DeveloperAttribute.fromMap(Map<String, dynamic> map) {
    return DeveloperAttribute(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

