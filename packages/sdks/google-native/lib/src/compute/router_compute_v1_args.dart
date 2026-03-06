// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_bgp_compute_v1.dart';
import 'router_bgp_peer_compute_v1.dart';
import 'router_interface_compute_v1.dart';
import 'router_md5_authentication_key_compute_v1.dart';
import 'router_nat_compute_v1.dart';

/// {@template pulumi_compute_v1_router_compute_v1_args_doc}
/// The set of arguments for Router.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_router_compute_v1_args_doc}
class RouterComputeV1Args {
  /// BGP information specific to this router.
  final pulumi.Input<RouterBgpComputeV1>? bgp;
  /// BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  final pulumi.Input<List<RouterBgpPeerComputeV1>>? bgpPeers;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  final pulumi.Input<bool>? encryptedInterconnectRouter;
  /// Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  final pulumi.Input<List<RouterInterfaceComputeV1>>? interfaces;
  /// Keys used for MD5 authentication.
  final pulumi.Input<List<RouterMd5AuthenticationKeyComputeV1>>? md5AuthenticationKeys;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// A list of NAT services created in this router.
  final pulumi.Input<List<RouterNatComputeV1>>? nats;
  /// URI of the network to which this router belongs.
  final pulumi.Input<String>? network;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [RouterComputeV1Args].
  /// [bgp] BGP information specific to this router.
  /// [bgpPeers] BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [encryptedInterconnectRouter] Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  /// [interfaces] Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  /// [md5AuthenticationKeys] Keys used for MD5 authentication.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [nats] A list of NAT services created in this router.
  /// [network] URI of the network to which this router belongs.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  const RouterComputeV1Args({
    this.bgp,
    this.bgpPeers,
    this.description,
    this.encryptedInterconnectRouter,
    this.interfaces,
    this.md5AuthenticationKeys,
    this.name,
    this.nats,
    this.network,
    this.project,
    required this.region,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgp': ?pulumi.Input.mapOptionalInputValue<RouterBgpComputeV1, Map<String, dynamic>>(bgp, (value) => value.toMap()),
      'bgpPeers': ?pulumi.Input.mapOptionalInputValue<List<RouterBgpPeerComputeV1>, List<Map<String, dynamic>>>(bgpPeers, (value) => pulumi.Input.encodeList<RouterBgpPeerComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'encryptedInterconnectRouter': ?encryptedInterconnectRouter,
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<RouterInterfaceComputeV1>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<RouterInterfaceComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'md5AuthenticationKeys': ?pulumi.Input.mapOptionalInputValue<List<RouterMd5AuthenticationKeyComputeV1>, List<Map<String, dynamic>>>(md5AuthenticationKeys, (value) => pulumi.Input.encodeList<RouterMd5AuthenticationKeyComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'nats': ?pulumi.Input.mapOptionalInputValue<List<RouterNatComputeV1>, List<Map<String, dynamic>>>(nats, (value) => pulumi.Input.encodeList<RouterNatComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'network': ?network,
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
    };
  }

  factory RouterComputeV1Args.fromMap(Map<String, dynamic> map) {
    return RouterComputeV1Args(
      bgp: (() { final guardedValue = map['bgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouterBgpComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bgpPeers: (() { final guardedValue = map['bgpPeers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterBgpPeerComputeV1>(guardedValue, (value) => RouterBgpPeerComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedInterconnectRouter: (() { final guardedValue = map['encryptedInterconnectRouter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      interfaces: (() { final guardedValue = map['interfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterInterfaceComputeV1>(guardedValue, (value) => RouterInterfaceComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      md5AuthenticationKeys: (() { final guardedValue = map['md5AuthenticationKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterMd5AuthenticationKeyComputeV1>(guardedValue, (value) => RouterMd5AuthenticationKeyComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nats: (() { final guardedValue = map['nats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterNatComputeV1>(guardedValue, (value) => RouterNatComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

