// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuNumaCellCachSize {
  /// Indicates the unit of measurement for the cache size, such as bytes or megabytes.
  final pulumi.Input<String> unit;
  /// Sets the actual value for the cache size as defined by the size unit.
  final pulumi.Input<String> value;

  /// Creates a new [DomainCpuNumaCellCachSize].
  /// [unit] Indicates the unit of measurement for the cache size, such as bytes or megabytes.
  /// [value] Sets the actual value for the cache size as defined by the size unit.
  const DomainCpuNumaCellCachSize({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory DomainCpuNumaCellCachSize.fromMap(Map<String, dynamic> map) {
    return DomainCpuNumaCellCachSize(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
