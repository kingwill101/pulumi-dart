// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesHostdevSubsysPciTeaming {
  /// Specifies if the teaming configuration is persistent across reboots.
  final String? persistent;
  /// Defines the type of teaming used for the PCI device.
  final String type;

  /// Creates a new [DomainDevicesHostdevSubsysPciTeaming].
  /// [persistent] Specifies if the teaming configuration is persistent across reboots.
  /// [type] Defines the type of teaming used for the PCI device.
  DomainDevicesHostdevSubsysPciTeaming({
    this.persistent,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistent': ?persistent,
      'type': type,
    };
  }

  factory DomainDevicesHostdevSubsysPciTeaming.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevSubsysPciTeaming(
      persistent: map['persistent'] == null ? null : map['persistent'] as String,
      type: map['type'] as String,
    );
  }
}

