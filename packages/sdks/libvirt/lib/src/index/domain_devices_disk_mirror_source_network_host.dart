// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorSourceNetworkHost {
  /// Defines the name of the iSCSI host for the source configuration.
  final pulumi.Input<String>? name;

  /// Specifies the port number for the iSCSI host connection.
  final pulumi.Input<String>? port;

  /// Sets the socket configuration for the iSCSI host connection.
  final pulumi.Input<String>? socket;

  /// Specifies the transport method used for the iSCSI host connection.
  final pulumi.Input<String>? transport;

  /// Creates a new [DomainDevicesDiskMirrorSourceNetworkHost].
  /// [name] Defines the name of the iSCSI host for the source configuration.
  /// [port] Specifies the port number for the iSCSI host connection.
  /// [socket] Sets the socket configuration for the iSCSI host connection.
  /// [transport] Specifies the transport method used for the iSCSI host connection.
  DomainDevicesDiskMirrorSourceNetworkHost({
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

  factory DomainDevicesDiskMirrorSourceNetworkHost.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesDiskMirrorSourceNetworkHost(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      socket: (() {
        final guardedValue = map['socket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transport: (() {
        final guardedValue = map['transport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
