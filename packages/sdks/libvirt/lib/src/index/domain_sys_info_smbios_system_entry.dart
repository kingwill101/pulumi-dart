// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainSysInfoSmbiosSystemEntry {
  /// Specifies the file associated with the firmware configuration entry.
  final pulumi.Input<String>? file;
  /// Defines the name of the firmware configuration entry.
  final pulumi.Input<String> name;
  /// Sets the value for the firmware configuration entry.
  final pulumi.Input<String> value;

  /// Creates a new [DomainSysInfoSmbiosSystemEntry].
  /// [file] Specifies the file associated with the firmware configuration entry.
  /// [name] Defines the name of the firmware configuration entry.
  /// [value] Sets the value for the firmware configuration entry.
  DomainSysInfoSmbiosSystemEntry({
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

  factory DomainSysInfoSmbiosSystemEntry.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbiosSystemEntry(
      file: map['file'] == null ? null : (map['file']! as String).input(),
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

