// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProperty {
  /// [Required] Name of the connection property to set.
  final pulumi.Input<String>? key;
  /// [Required] Value of the connection property.
  final pulumi.Input<String>? value;

  /// Creates a new [ConnectionProperty].
  /// [key] [Required] Name of the connection property to set.
  /// [value] [Required] Value of the connection property.
  const ConnectionProperty({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory ConnectionProperty.fromMap(Map<String, dynamic> map) {
    return ConnectionProperty(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

