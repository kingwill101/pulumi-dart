// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrationJobDumpFlagsDumpFlag {
  /// The name of the flag
  final pulumi.Input<String>? name;
  /// The vale of the flag
  final pulumi.Input<String>? value;

  /// Creates a new [MigrationJobDumpFlagsDumpFlag].
  /// [name] The name of the flag
  /// [value] The vale of the flag
  const MigrationJobDumpFlagsDumpFlag({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory MigrationJobDumpFlagsDumpFlag.fromMap(Map<String, dynamic> map) {
    return MigrationJobDumpFlagsDumpFlag(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

