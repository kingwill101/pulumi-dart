// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IAppVariable {
  /// Name of origin
  final pulumi.Input<String>? encrypted;
  /// Name of the iApp.
  final pulumi.Input<String>? name;
  /// Name of origin
  final pulumi.Input<String>? value;

  /// Creates a new [IAppVariable].
  /// [encrypted] Name of origin
  /// [name] Name of the iApp.
  /// [value] Name of origin
  const IAppVariable({
    this.encrypted,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encrypted': ?encrypted,
      'name': ?name,
      'value': ?value,
    };
  }

  factory IAppVariable.fromMap(Map<String, dynamic> map) {
    return IAppVariable(
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

