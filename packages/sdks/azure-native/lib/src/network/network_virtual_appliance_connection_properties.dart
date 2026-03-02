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
      asn: map['asn'] == null ? null : (map['asn'] as double).input(),
      bgpPeerAddress: map['bgpPeerAddress'] == null ? null : ((map['bgpPeerAddress'] as List).cast<String>()).input(),
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : (map['enableInternetSecurity'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      routingConfiguration: map['routingConfiguration'] == null ? null : (RoutingConfiguration.fromMap((map['routingConfiguration'] as Map).cast<String, dynamic>())).input(),
      tunnelIdentifier: map['tunnelIdentifier'] == null ? null : (map['tunnelIdentifier'] as double).input(),
    );
  }
}

