// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentPropertiesProperty {
  /// The property key.
  final pulumi.Input<String>? name;
  /// The property value.
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentPropertiesProperty].
  /// [name] The property key.
  /// [value] The property value.
  EnvironmentPropertiesProperty({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory EnvironmentPropertiesProperty.fromMap(Map<String, dynamic> map) {
    return EnvironmentPropertiesProperty(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

