// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemSourceRam {
  /// Defines the units for the RAM source of the filesystem.
  final pulumi.Input<String>? units;
  /// Specifies the usage type for the RAM source of the filesystem.
  final pulumi.Input<double> usage;

  /// Creates a new [DomainDevicesFilesystemSourceRam].
  /// [units] Defines the units for the RAM source of the filesystem.
  /// [usage] Specifies the usage type for the RAM source of the filesystem.
  const DomainDevicesFilesystemSourceRam({
    this.units,
    required this.usage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'units': ?units,
      'usage': usage,
    };
  }

  factory DomainDevicesFilesystemSourceRam.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemSourceRam(
      units: (() { final guardedValue = map['units']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usage: pulumi.Input.fromValue(map['usage'] as double),
    );
  }
}
