// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceNetworkHost {
  /// Defines the name of the iSCSI host for the source configuration.
  final pulumi.Input<String>? name;
  /// Specifies the port number for the iSCSI host connection.
  final pulumi.Input<String>? port;
  /// Sets the socket configuration for the iSCSI host connection.
  final pulumi.Input<String>? socket;
  /// Specifies the transport method used for the iSCSI host connection.
  final pulumi.Input<String>? transport;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceNetworkHost].
  /// [name] Defines the name of the iSCSI host for the source configuration.
  /// [port] Specifies the port number for the iSCSI host connection.
  /// [socket] Sets the socket configuration for the iSCSI host connection.
  /// [transport] Specifies the transport method used for the iSCSI host connection.
  DomainDevicesDiskBackingStoreSourceNetworkHost({
    this.name,
    this.port,
    this.socket,
    this.transport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'port': ?port,
      'socket': ?socket,
      'transport': ?transport,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceNetworkHost.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceNetworkHost(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as String).input(),
      socket: map['socket'] == null ? null : (map['socket'] as String).input(),
      transport: map['transport'] == null ? null : (map['transport'] as String).input(),
    );
  }
}

