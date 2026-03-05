// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_configuration.dart';

/// Properties of the NetworkVirtualApplianceConnection subresource.
class NetworkVirtualApplianceConnectionProperties {
  /// Network Virtual Appliance ASN.
  final pulumi.Input<double>? asn;
  /// List of bgpPeerAddresses for the NVA instances
  final pulumi.Input<List<String>>? bgpPeerAddress;
  /// Enable internet security.
  final pulumi.Input<bool>? enableInternetSecurity;
  /// The name of the resource.
  final pulumi.Input<String>? name;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final pulumi.Input<RoutingConfiguration>? routingConfiguration;
  /// Unique identifier for the connection.
  final pulumi.Input<double>? tunnelIdentifier;

  /// Creates a new [NetworkVirtualApplianceConnectionProperties].
  /// [asn] Network Virtual Appliance ASN.
  /// [bgpPeerAddress] List of bgpPeerAddresses for the NVA instances
  /// [enableInternetSecurity] Enable internet security.
  /// [name] The name of the resource.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [tunnelIdentifier] Unique identifier for the connection.
  NetworkVirtualApplianceConnectionProperties({
    this.asn,
    this.bgpPeerAddress,
    this.enableInternetSecurity,
    this.name,
    this.routingConfiguration,
    this.tunnelIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'bgpPeerAddress': ?bgpPeerAddress,
      'enableInternetSecurity': ?enableInternetSecurity,
      'name': ?name,
      'routingConfiguration': ?pulumi.Input.mapOptionalInputValue<RoutingConfiguration, Map<String, dynamic>>(routingConfiguration, (value) => value.toMap()),
      'tunnelIdentifier': ?tunnelIdentifier,
    };
  }

  factory NetworkVirtualApplianceConnectionProperties.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualApplianceConnectionProperties(
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      bgpPeerAddress: (() { final guardedValue = map['bgpPeerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableInternetSecurity: (() { final guardedValue = map['enableInternetSecurity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingConfiguration: (() { final guardedValue = map['routingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tunnelIdentifier: (() { final guardedValue = map['tunnelIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

