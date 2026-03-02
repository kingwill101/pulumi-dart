// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceBackend {
  /// Specifies the log file location for the network interface backend.
  final pulumi.Input<String>? logFile;
  /// Controls whether the backend uses a tap device.
  final pulumi.Input<String>? tap;
  /// Configures the type of backend for the interface, specifying how the interface connects to the underlying hardware.
  final pulumi.Input<String>? type;
  /// Controls whether the vhost user mode is enabled for the interface, optimizing network performance by using shared memory.
  final pulumi.Input<String>? vhost;

  /// Creates a new [DomainDevicesInterfaceBackend].
  /// [logFile] Specifies the log file location for the network interface backend.
  /// [tap] Controls whether the backend uses a tap device.
  /// [type] Configures the type of backend for the interface, specifying how the interface connects to the underlying hardware.
  /// [vhost] Controls whether the vhost user mode is enabled for the interface, optimizing network performance by using shared memory.
  DomainDevicesInterfaceBackend({
    this.logFile,
    this.tap,
    this.type,
    this.vhost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFile': ?logFile,
      'tap': ?tap,
      'type': ?type,
      'vhost': ?vhost,
    };
  }

  factory DomainDevicesInterfaceBackend.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceBackend(
      logFile: map['logFile'] == null ? null : (map['logFile'] as String).input(),
      tap: map['tap'] == null ? null : (map['tap'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      vhost: map['vhost'] == null ? null : (map['vhost'] as String).input(),
    );
  }
}

