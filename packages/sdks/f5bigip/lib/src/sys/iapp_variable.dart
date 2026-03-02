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
  IAppVariable({
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
      encrypted: map['encrypted'] == null ? null : (map['encrypted']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

