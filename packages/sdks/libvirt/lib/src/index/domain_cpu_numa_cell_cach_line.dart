// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuNumaCellCachLine {
  /// Defines the unit of measurement for the cache line size, such as bytes or kilobytes.
  final pulumi.Input<String> unit;

  /// Sets the actual value for the cache line size as defined by the line unit.
  final pulumi.Input<String> value;

  /// Creates a new [DomainCpuNumaCellCachLine].
  /// [unit] Defines the unit of measurement for the cache line size, such as bytes or kilobytes.
  /// [value] Sets the actual value for the cache line size as defined by the line unit.
  DomainCpuNumaCellCachLine({required this.unit, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory DomainCpuNumaCellCachLine.fromMap(Map<String, dynamic> map) {
    return DomainCpuNumaCellCachLine(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
