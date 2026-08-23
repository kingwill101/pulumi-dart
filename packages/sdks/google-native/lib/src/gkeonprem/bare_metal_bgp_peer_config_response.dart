// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalBgpPeerConfig represents configuration parameters for a Border Gateway Protocol (BGP) peer.
class BareMetalBgpPeerConfigResponse {
  /// BGP autonomous system number (ASN) for the network that contains the external peer device.
  final pulumi.Input<String> asn;
  /// The IP address of the control plane node that connects to the external peer. If you don't specify any control plane nodes, all control plane nodes can connect to the external peer. If you specify one or more IP addresses, only the nodes specified participate in peering sessions.
  final pulumi.Input<List<String>> controlPlaneNodes;
  /// The IP address of the external peer device.
  final pulumi.Input<String> ipAddress;

  /// Creates a new [BareMetalBgpPeerConfigResponse].
  /// [asn] BGP autonomous system number (ASN) for the network that contains the external peer device.
  /// [controlPlaneNodes] The IP address of the control plane node that connects to the external peer. If you don't specify any control plane nodes, all control plane nodes can connect to the external peer. If you specify one or more IP addresses, only the nodes specified participate in peering sessions.
  /// [ipAddress] The IP address of the external peer device.
  const BareMetalBgpPeerConfigResponse({
    required this.asn,
    required this.controlPlaneNodes,
    required this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'controlPlaneNodes': controlPlaneNodes,
      'ipAddress': ipAddress,
    };
  }

  factory BareMetalBgpPeerConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalBgpPeerConfigResponse(
      asn: pulumi.Input.fromValue(map['asn'] as String),
      controlPlaneNodes: pulumi.Input.fromValue((map['controlPlaneNodes'] as List).cast<String>()),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
    );
  }
}
