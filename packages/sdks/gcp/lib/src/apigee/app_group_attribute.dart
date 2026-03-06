// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppGroupAttribute {
  /// Key of the attribute
  final pulumi.Input<String>? name;
  /// Value of the attribute
  final pulumi.Input<String>? value;

  /// Creates a new [AppGroupAttribute].
  /// [name] Key of the attribute
  /// [value] Value of the attribute
  const AppGroupAttribute({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory AppGroupAttribute.fromMap(Map<String, dynamic> map) {
    return AppGroupAttribute(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

