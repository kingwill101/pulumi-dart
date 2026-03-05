// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_bgp_peer_response_compute_beta.dart';
import 'router_bgp_response_compute_beta.dart';
import 'router_interface_response_compute_beta.dart';
import 'router_md5_authentication_key_response_compute_beta.dart';
import 'router_nat_response_compute_beta.dart';

/// Result data returned by getRouter.
class GetRouterComputeBetaResult {
  /// BGP information specific to this router.
  final RouterBgpResponseComputeBeta bgp;
  /// BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  final List<RouterBgpPeerResponseComputeBeta> bgpPeers;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  final bool encryptedInterconnectRouter;
  /// Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  final List<RouterInterfaceResponseComputeBeta> interfaces;
  /// Type of resource. Always compute#router for routers.
  final String kind;
  /// Keys used for MD5 authentication.
  final List<RouterMd5AuthenticationKeyResponseComputeBeta> md5AuthenticationKeys;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// A list of NAT services created in this router.
  final List<RouterNatResponseComputeBeta> nats;
  /// URI of the network to which this router belongs.
  final String network;
  /// URI of the region where the router resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;
  /// Server-defined URL for the resource.
  final String selfLink;

  /// Creates a new [GetRouterComputeBetaResult].
  /// [bgp] BGP information specific to this router.
  /// [bgpPeers] BGP information that must be configured into the routing stack to establish BGP peering. This information must specify the peer ASN and either the interface name, IP address, or peer IP address. Please refer to RFC4273.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [encryptedInterconnectRouter] Indicates if a router is dedicated for use with encrypted VLAN attachments (interconnectAttachments).
  /// [interfaces] Router interfaces. To create a BGP peer that uses a router interface, the interface must have one of the following fields specified: - linkedVpnTunnel - linkedInterconnectAttachment - subnetwork You can create a router interface without any of these fields specified. However, you cannot create a BGP peer that uses that interface.
  /// [kind] Type of resource. Always compute#router for routers.
  /// [md5AuthenticationKeys] Keys used for MD5 authentication.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [nats] A list of NAT services created in this router.
  /// [network] URI of the network to which this router belongs.
  /// [region] URI of the region where the router resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  /// [selfLink] Server-defined URL for the resource.
  GetRouterComputeBetaResult({
    required this.bgp,
    required this.bgpPeers,
    required this.creationTimestamp,
    required this.description,
    required this.encryptedInterconnectRouter,
    required this.interfaces,
    required this.kind,
    required this.md5AuthenticationKeys,
    required this.name,
    required this.nats,
    required this.network,
    required this.region,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgp': bgp.toMap(),
      'bgpPeers': pulumi.Input.encodeList<RouterBgpPeerResponseComputeBeta, Map<String, dynamic>>(bgpPeers, (value) => value.toMap()),
      'creationTimestamp': creationTimestamp,
      'description': description,
      'encryptedInterconnectRouter': encryptedInterconnectRouter,
      'interfaces': pulumi.Input.encodeList<RouterInterfaceResponseComputeBeta, Map<String, dynamic>>(interfaces, (value) => value.toMap()),
      'kind': kind,
      'md5AuthenticationKeys': pulumi.Input.encodeList<RouterMd5AuthenticationKeyResponseComputeBeta, Map<String, dynamic>>(md5AuthenticationKeys, (value) => value.toMap()),
      'name': name,
      'nats': pulumi.Input.encodeList<RouterNatResponseComputeBeta, Map<String, dynamic>>(nats, (value) => value.toMap()),
      'network': network,
      'region': region,
      'selfLink': selfLink,
    };
  }

  factory GetRouterComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetRouterComputeBetaResult(
      bgp: RouterBgpResponseComputeBeta.fromMap((map['bgp']! as Map).cast<String, dynamic>()),
      bgpPeers: pulumi.Input.decodeList<RouterBgpPeerResponseComputeBeta>(map['bgpPeers']!, (value) => RouterBgpPeerResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      encryptedInterconnectRouter: map['encryptedInterconnectRouter'] as bool,
      interfaces: pulumi.Input.decodeList<RouterInterfaceResponseComputeBeta>(map['interfaces']!, (value) => RouterInterfaceResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      md5AuthenticationKeys: pulumi.Input.decodeList<RouterMd5AuthenticationKeyResponseComputeBeta>(map['md5AuthenticationKeys']!, (value) => RouterMd5AuthenticationKeyResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nats: pulumi.Input.decodeList<RouterNatResponseComputeBeta>(map['nats']!, (value) => RouterNatResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      network: map['network'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}

