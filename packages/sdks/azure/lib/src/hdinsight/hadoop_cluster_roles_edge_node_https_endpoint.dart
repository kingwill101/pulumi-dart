// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HadoopClusterRolesEdgeNodeHttpsEndpoint {
  /// A list of access modes for the application.
  final pulumi.Input<List<String>>? accessModes;
  /// The destination port to connect to.
  final pulumi.Input<int>? destinationPort;
  /// The value indicates whether the gateway authentication is enabled or not.
  final pulumi.Input<bool>? disableGatewayAuth;
  /// The private ip address of the endpoint.
  final pulumi.Input<String>? privateIpAddress;
  /// The application's subdomain suffix.
  final pulumi.Input<String>? subDomainSuffix;

  /// Creates a new [HadoopClusterRolesEdgeNodeHttpsEndpoint].
  /// [accessModes] A list of access modes for the application.
  /// [destinationPort] The destination port to connect to.
  /// [disableGatewayAuth] The value indicates whether the gateway authentication is enabled or not.
  /// [privateIpAddress] The private ip address of the endpoint.
  /// [subDomainSuffix] The application's subdomain suffix.
  const HadoopClusterRolesEdgeNodeHttpsEndpoint({
    this.accessModes,
    this.destinationPort,
    this.disableGatewayAuth,
    this.privateIpAddress,
    this.subDomainSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessModes': ?accessModes,
      'destinationPort': ?destinationPort,
      'disableGatewayAuth': ?disableGatewayAuth,
      'privateIpAddress': ?privateIpAddress,
      'subDomainSuffix': ?subDomainSuffix,
    };
  }

  factory HadoopClusterRolesEdgeNodeHttpsEndpoint.fromMap(Map<String, dynamic> map) {
    return HadoopClusterRolesEdgeNodeHttpsEndpoint(
      accessModes: (() { final guardedValue = map['accessModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationPort: (() { final guardedValue = map['destinationPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      disableGatewayAuth: (() { final guardedValue = map['disableGatewayAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subDomainSuffix: (() { final guardedValue = map['subDomainSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

