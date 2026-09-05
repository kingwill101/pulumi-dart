// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceBackend {
  final pulumi.Input<String?>? fqdn;
  final pulumi.Input<String?>? hostname;
  /// Specifies the log file location for the network interface backend.
  final pulumi.Input<String?>? logFile;
  /// Controls whether the backend uses a tap device.
  final pulumi.Input<String?>? tap;
  /// Configures the type of backend for the interface, specifying how the interface connects to the underlying hardware.
  final pulumi.Input<String?>? type;
  /// Controls whether the vhost user mode is enabled for the interface, optimizing network performance by using shared memory.
  final pulumi.Input<String?>? vhost;

  /// Creates a new [DomainDevicesInterfaceBackend].
  /// [fqdn] Optional.
  /// [hostname] Optional.
  /// [logFile] Specifies the log file location for the network interface backend.
  /// [tap] Controls whether the backend uses a tap device.
  /// [type] Configures the type of backend for the interface, specifying how the interface connects to the underlying hardware.
  /// [vhost] Controls whether the vhost user mode is enabled for the interface, optimizing network performance by using shared memory.
  const DomainDevicesInterfaceBackend({
    this.fqdn,
    this.hostname,
    this.logFile,
    this.tap,
    this.type,
    this.vhost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'hostname': ?hostname,
      'logFile': ?logFile,
      'tap': ?tap,
      'type': ?type,
      'vhost': ?vhost,
    };
  }

  factory DomainDevicesInterfaceBackend.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceBackend(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logFile: (() { final guardedValue = map['logFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tap: (() { final guardedValue = map['tap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vhost: (() { final guardedValue = map['vhost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
