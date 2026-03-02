// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceSourceDirect {
  /// Defines the physical device name for the direct attachment of the network interface.
  final pulumi.Input<String>? dev;
  /// Sets the mode for the direct connection of the network interface, specifying how it interacts with the host.
  final pulumi.Input<String>? mode;

  /// Creates a new [DomainDevicesInterfaceSourceDirect].
  /// [dev] Defines the physical device name for the direct attachment of the network interface.
  /// [mode] Sets the mode for the direct connection of the network interface, specifying how it interacts with the host.
  DomainDevicesInterfaceSourceDirect({
    this.dev,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': ?dev,
      'mode': ?mode,
    };
  }

  factory DomainDevicesInterfaceSourceDirect.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceDirect(
      dev: map['dev'] == null ? null : (map['dev'] as String).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
    );
  }
}

