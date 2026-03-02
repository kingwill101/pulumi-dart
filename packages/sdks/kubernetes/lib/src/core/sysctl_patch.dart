// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sysctl defines a kernel parameter to be set
class SysctlPatch {
  /// Name of a property to set
  final pulumi.Input<String>? name;
  /// Value of a property to set
  final pulumi.Input<String>? value;

  /// Creates a new [SysctlPatch].
  /// [name] Name of a property to set
  /// [value] Value of a property to set
  SysctlPatch({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory SysctlPatch.fromMap(Map<String, dynamic> map) {
    return SysctlPatch(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

