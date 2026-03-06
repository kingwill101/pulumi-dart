// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationPropertiesProperty {
  /// Name of the property.
  final pulumi.Input<String>? name;
  /// Value of the property.
  final pulumi.Input<String>? value;

  /// Creates a new [OrganizationPropertiesProperty].
  /// [name] Name of the property.
  /// [value] Value of the property.
  const OrganizationPropertiesProperty({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory OrganizationPropertiesProperty.fromMap(Map<String, dynamic> map) {
    return OrganizationPropertiesProperty(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

