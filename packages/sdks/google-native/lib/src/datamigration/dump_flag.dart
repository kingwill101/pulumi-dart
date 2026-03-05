// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dump flag definition.
class DumpFlag {
  /// The name of the flag
  final pulumi.Input<String>? name;
  /// The value of the flag.
  final pulumi.Input<String>? value;

  /// Creates a new [DumpFlag].
  /// [name] The name of the flag
  /// [value] The value of the flag.
  DumpFlag({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory DumpFlag.fromMap(Map<String, dynamic> map) {
    return DumpFlag(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

