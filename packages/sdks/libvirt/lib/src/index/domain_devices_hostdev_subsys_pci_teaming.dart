// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesHostdevSubsysPciTeaming {
  /// Specifies if the teaming configuration is persistent across reboots.
  final pulumi.Input<String>? persistent;
  /// Defines the type of teaming used for the PCI device.
  final pulumi.Input<String> type;

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
      persistent: (() { final guardedValue = map['persistent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

