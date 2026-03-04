// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeveloperAppAttribute {
  /// Key of the attribute
  final pulumi.Input<String>? name;

  /// Value of the attribute
  final pulumi.Input<String>? value;

  /// Creates a new [DeveloperAppAttribute].
  /// [name] Key of the attribute
  /// [value] Value of the attribute
  DeveloperAppAttribute({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory DeveloperAppAttribute.fromMap(Map<String, dynamic> map) {
    return DeveloperAppAttribute(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
