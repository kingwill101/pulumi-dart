// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesFilesystemSourceRam {
  /// Defines the units for the RAM source of the filesystem.
  final String? units;
  /// Specifies the usage type for the RAM source of the filesystem.
  final double usage;

  /// Creates a new [DomainDevicesFilesystemSourceRam].
  /// [units] Defines the units for the RAM source of the filesystem.
  /// [usage] Specifies the usage type for the RAM source of the filesystem.
  DomainDevicesFilesystemSourceRam({
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
      units: map['units'] == null ? null : map['units'] as String,
      usage: map['usage'] as double,
    );
  }
}

