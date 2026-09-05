// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainSysInfoSmbiosMemoryEntry {
  /// Specifies the file associated with the firmware configuration entry.
  final pulumi.Input<String?>? file;
  /// Defines the name of the firmware configuration entry.
  final pulumi.Input<String> name;
  /// Sets the value for the firmware configuration entry.
  final pulumi.Input<String> value;

  /// Creates a new [DomainSysInfoSmbiosMemoryEntry].
  /// [file] Specifies the file associated with the firmware configuration entry.
  /// [name] Defines the name of the firmware configuration entry.
  /// [value] Sets the value for the firmware configuration entry.
  const DomainSysInfoSmbiosMemoryEntry({
    this.file,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': ?file,
      'name': name,
      'value': value,
    };
  }

  factory DomainSysInfoSmbiosMemoryEntry.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbiosMemoryEntry(
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
