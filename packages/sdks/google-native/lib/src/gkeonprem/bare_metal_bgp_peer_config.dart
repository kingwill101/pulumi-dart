// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalBgpPeerConfig represents configuration parameters for a Border Gateway Protocol (BGP) peer.
class BareMetalBgpPeerConfig {
  /// BGP autonomous system number (ASN) for the network that contains the external peer device.
  final pulumi.Input<String> asn;
  /// The IP address of the control plane node that connects to the external peer. If you don't specify any control plane nodes, all control plane nodes can connect to the external peer. If you specify one or more IP addresses, only the nodes specified participate in peering sessions.
  final pulumi.Input<List<String>>? controlPlaneNodes;
  /// The IP address of the external peer device.
  final pulumi.Input<String> ipAddress;

  /// Creates a new [BareMetalBgpPeerConfig].
  /// [asn] BGP autonomous system number (ASN) for the network that contains the external peer device.
  /// [controlPlaneNodes] The IP address of the control plane node that connects to the external peer. If you don't specify any control plane nodes, all control plane nodes can connect to the external peer. If you specify one or more IP addresses, only the nodes specified participate in peering sessions.
  /// [ipAddress] The IP address of the external peer device.
  BareMetalBgpPeerConfig({
    required this.asn,
    this.controlPlaneNodes,
    required this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'controlPlaneNodes': ?controlPlaneNodes,
      'ipAddress': ipAddress,
    };
  }

  factory BareMetalBgpPeerConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalBgpPeerConfig(
      asn: (map['asn'] as String).input(),
      controlPlaneNodes: map['controlPlaneNodes'] == null ? null : ((map['controlPlaneNodes'] as List).cast<String>()).input(),
      ipAddress: (map['ipAddress'] as String).input(),
    );
  }
}

