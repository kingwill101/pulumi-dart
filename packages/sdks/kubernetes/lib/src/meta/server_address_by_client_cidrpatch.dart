// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServerAddressByClientCIDR helps the client to determine the server address that they should use, depending on the clientCIDR that they match.
class ServerAddressByClientCIDRPatch {
  /// The CIDR with which clients can match their IP to figure out the server address that they should use.
  final pulumi.Input<String>? clientCIDR;
  /// Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
  final pulumi.Input<String>? serverAddress;

  /// Creates a new [ServerAddressByClientCIDRPatch].
  /// [clientCIDR] The CIDR with which clients can match their IP to figure out the server address that they should use.
  /// [serverAddress] Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
  ServerAddressByClientCIDRPatch({
    this.clientCIDR,
    this.serverAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCIDR': ?clientCIDR,
      'serverAddress': ?serverAddress,
    };
  }

  factory ServerAddressByClientCIDRPatch.fromMap(Map<String, dynamic> map) {
    return ServerAddressByClientCIDRPatch(
      clientCIDR: (() { final guardedValue = map['clientCIDR']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverAddress: (() { final guardedValue = map['serverAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

